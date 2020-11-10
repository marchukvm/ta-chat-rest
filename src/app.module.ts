import { Module } from '@nestjs/common';
import { UserModule } from './modules/user/user.module';
import { RoomModule } from './modules/room/room.module';
import { TypeOrmModule } from '@nestjs/typeorm';

@Module({
  imports: [
    UserModule,
    RoomModule,
    TypeOrmModule.forRoot({
      type: 'postgres',
      host: process.env.PG_HOST || "localhost",
      port: Number(process.env.PG_PORT) || 5432,
      username: process.env.PG_USER || "postgres",
      password: process.env.PG_PASSWORD || "postgres",
      database: process.env.PG_DATABASE || 'chatdb',
      entities: [],
      synchronize: true,
    })
  ]
})
export class AppModule {}
