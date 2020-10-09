using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;

namespace ColorCode
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        MiniWindow mini = new MiniWindow();
        bool clicked = false;
        static System.Drawing.Color GetPixel(System.Drawing.Point position)
        {
            using (var bitmap = new Bitmap(1, 1))
            {
                using (var graphics = Graphics.FromImage(bitmap))
                {
                    graphics.CopyFromScreen(position, new System.Drawing.Point(0, 0), new System.Drawing.Size(1, 1));
                }
                return bitmap.GetPixel(0, 0);
            }
        }

        public MainWindow()
        {
            this.MaxHeight = SystemParameters.MaximizedPrimaryScreenHeight;
            this.MaxWidth = SystemParameters.MaximizedPrimaryScreenWidth;
            InitializeComponent();

            _ = Task.Run(async () =>
            {
                while (true)
                {
                    var colr = GetPixel(GetMousePosition());
                    mini.tbHex.Text = $"{ colr.A}, { colr.R}, { colr.G}, { colr.B}";
                    await Task.Delay(5);
                }
            });
            mini.Show();
            mini.Topmost = true;
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }


        [DllImport("user32.dll")]
        [return: MarshalAs(UnmanagedType.Bool)]
        internal static extern bool GetCursorPos(ref Win32Point pt);

        [StructLayout(LayoutKind.Sequential)]
        internal struct Win32Point
        {
            public Int32 X;
            public Int32 Y;
        };
        public static System.Drawing.Point GetMousePosition()
        {
            var w32Mouse = new Win32Point();
            GetCursorPos(ref w32Mouse);

            return new System.Drawing.Point(w32Mouse.X, w32Mouse.Y);
        }
        private void Window_MouseMove(object sender, MouseEventArgs e)
        {
            if (!clicked)
            {
                var colr = GetPixel(GetMousePosition());
                mini.tbRgb.Text = $"{ colr.A}, { colr.R}, { colr.G}, { colr.B}";
                rec.BorderBrush = new SolidColorBrush(System.Windows.Media.Color.FromRgb(colr.R, colr.G, colr.B));
                mini.tbHex.Text = rec.BorderBrush.ToString();
            }
            else
            {
                mini.Focus();
            }
        }

        private void Grid_MouseDown(object sender, MouseButtonEventArgs e)
        {
            clicked = (e.RightButton == MouseButtonState.Pressed);
             
        }

        private void Grid_GotFocus(object sender, RoutedEventArgs e)
        {
            clicked = false;
        }
    }
}
