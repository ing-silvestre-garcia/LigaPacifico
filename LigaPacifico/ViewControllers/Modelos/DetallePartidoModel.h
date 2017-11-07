//
//  PartidoModel.h
//  LigaPacifico
//
//  Created by Silvestre García on 11/2/17.
//  Copyright © 2017 Pegasus. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@protocol DetallePartidoModel;

@interface DetallePartidoModel : JSONModel
    @property (nonatomic) NSString *time;
    @property (nonatomic) NSString *startTime;
    @property (nonatomic) NSString *away_name;
    @property (nonatomic) NSString *home_name;
    @property (nonatomic) NSString *away_logo;
    @property (nonatomic) NSString *home_logo;
@end

@interface PartidoModel : JSONModel
@property (nonatomic) NSArray <DetallePartidoModel> *partidos;
@end
