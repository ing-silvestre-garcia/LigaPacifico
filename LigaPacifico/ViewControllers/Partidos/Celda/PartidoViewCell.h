//
//  PartidoViewCell.h
//  LigaPacifico
//
//  Created by Silvestre García on 11/2/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PartidoViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblEquipoLocal;
@property (weak, nonatomic) IBOutlet UILabel *lblEquipoVisitante;
@property (weak, nonatomic) IBOutlet UILabel *lblHorario;

@end
