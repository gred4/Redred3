using System;

namespace SuperDuperPlayer
{
    public class Song
    {
        public Song(string title, string path)
        {
            this.Path = path;
            this.Title = title;
        }

        public string Title { get; private set; }
        public string Path { get; private set; }

        public override string ToString()
        {
            return this.Title;
        }
    }
}
