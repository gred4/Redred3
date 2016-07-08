using System;
using System.Collections.ObjectModel;
using System.Windows;

namespace SuperDuperPlayer
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        private Playlist brain;

        public Window1()
        {
            InitializeComponent();
            this.DataContext = this;
            this.brain = new Playlist(this.player);

            this.button_add.Click += new RoutedEventHandler(button_add_Click);
            this.button_back.Click += new RoutedEventHandler(button_back_Click);
            this.button_forward.Click += new RoutedEventHandler(button_forward_Click);
            this.button_play.Click += new RoutedEventHandler(button_play_Click);
            this.button_repeat.Click += new RoutedEventHandler(button_repeat_Click);
            this.button_shuffle.Click += new RoutedEventHandler(button_shuffle_Click);
            this.button_stop.Click += new RoutedEventHandler(button_stop_Click);
        }

        void button_stop_Click(object sender, RoutedEventArgs e)
        {
            this.brain.Stop();
        }

        void button_shuffle_Click(object sender, RoutedEventArgs e)
        {
            this.brain.ToggleShuffle();
        }

        void button_repeat_Click(object sender, RoutedEventArgs e)
        {
            this.brain.ToggleRepeat();
        }

        void button_play_Click(object sender, RoutedEventArgs e)
        {
            this.brain.Play();
        }

        void button_forward_Click(object sender, RoutedEventArgs e)
        {
            this.brain.Next();
        }

        void button_back_Click(object sender, RoutedEventArgs e)
        {
            this.brain.Prev();
        }

       
        void button_add_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Forms.OpenFileDialog dialog = new System.Windows.Forms.OpenFileDialog();
            dialog.Filter = "MP3's (*.mp3)|*.mp3|All files (*.*)|*.*";
            dialog.Multiselect = true;
            System.Windows.Forms.DialogResult result = dialog.ShowDialog();
            if(result == System.Windows.Forms.DialogResult.OK)
            {
                foreach (string filename in dialog.FileNames)
                {
                    if (System.IO.File.Exits(filename))
                    {
                        this.brain.AddSong(filename);
                    }
                }
            }
        }

        public ObservableCollection<Song> Songs
        {
            get { return this.brain.Songs; }
        }
    }
}