using System;
using System.Collections.Generic;
using System.Linq;
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
using System.Windows.Shapes;

namespace Practica
{
    /// <summary>
    /// Логика взаимодействия для ClientView.xaml
    /// </summary>
    public partial class ClientView : Page
    {
        public ClientView()
        {
            InitializeComponent();
            DGridSaloon.ItemsSource = pro_9Entities.GetContext().Client.ToList();
        }

        private void BtnBackToMain_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new HelloPage());
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            var ClientForRemoving = DGridSaloon.SelectedItems.Cast<Client>().ToList();

            if (MessageBox.Show($"Вы точно хотите удалить следующие {ClientForRemoving.Count()}элементов ?", "Внимание",
                MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    pro_9Entities.GetContext().Client.RemoveRange(ClientForRemoving);
                    pro_9Entities.GetContext().SaveChanges();
                    MessageBox.Show("Данные удалены! ");
                    DGridSaloon.ItemsSource = pro_9Entities.GetContext().Client.ToList();

                }
                catch (Exception ex)
                {

                    MessageBox.Show(ex.Message.ToString());
                }
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddEditPage(null));
        }
    }
}
