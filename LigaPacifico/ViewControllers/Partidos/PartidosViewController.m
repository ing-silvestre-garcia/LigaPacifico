//
//  PartidosViewController.m
//  LigaPacifico
//
//  Created by Silvestre García on 11/2/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import "PartidosViewController.h"
#import "DetallePartidoModel.h"
#import "PartidoViewCell.h"

@interface PartidosViewController ()
@property NSString *partidos;
@property PartidoModel *partidoListado;
@end

@implementation PartidosViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINib *cellNib = [UINib nibWithNibName:@"PartidoViewCell" bundle:nil];
    [self.tableView registerNib:cellNib forCellReuseIdentifier:@"partidoCell"];
    
    self.partidos = @"{\"partidos\":[{\"time\":\"08:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Yaquis\",\"home_name\":\"Mayos\",\"away_logo\":\"/assets/images/logo-team/obr.png\",\"home_logo\":\"/assets/images/logo-team/nav.png\"},{\"time\":\"8:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Cañeros\",\"home_name\":\"Águilas\",\"away_logo\":\"/assets/images/logo-team/moc.png\",\"home_logo\":\"/assets/images/logo-team/mxc.png\"},{\"time\":\"09:00 PM\",\"startTime\":\"08:00 PM\",\"away_name\":\"Tomateros\",\"home_name\":\"Venados\",\"away_logo\":\"/assets/images/logo-team/cul.png\",\"home_logo\":\"/assets/images/logo-team/maz.png\"},{\"time\":\"08:30 PM\",\"startTime\":\"07:30 PM\",\"away_name\":\"Charros\",\"home_name\":\"Naranjeros\",\"away_logo\":\"/assets/images/logo-team/jal.png\",\"home_logo\":\"/assets/images/logo-team/her.png\"}]}";
    NSError *error;
    self.partidoListado = [[PartidoModel alloc]initWithString:self.partidos error:&error];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (self.partidoListado != nil) {
        return self.partidoListado.partidos.count;
    } else {
        return 0;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PartidoViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"partidoCell"];
    
    DetallePartidoModel *partidoActual = [self.partidoListado.partidos objectAtIndex:indexPath.row];
    cell.lblEquipoLocal.text = partidoActual.home_name;
    cell.lblEquipoVisitante.text = partidoActual.away_name;
    cell.lblHorario.text = partidoActual.startTime;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 5.0;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

@end
