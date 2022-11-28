.class public Lbike/smarthalo/app/api/requests/SHUserSignupRequest;
.super Ljava/lang/Object;
.source "SHUserSignupRequest.java"


# instance fields
.field public dateOfBirth:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public firstName:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field public lastName:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->language:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->email:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->firstName:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->lastName:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->password:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->dateOfBirth:Ljava/util/Date;

    .line 32
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserSignupRequest;->language:Ljava/lang/String;

    return-void
.end method
