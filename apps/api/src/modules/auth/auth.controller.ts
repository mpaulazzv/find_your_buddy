import { Controller, Post } from '@nestjs/common';

@Controller('auth')
export class AuthController {

    //Register user via email and password

    @Post('register')
    createUser(){
        return 'user created';
    }
}
