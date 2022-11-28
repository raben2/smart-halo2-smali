.class public Lbike/smarthalo/app/api/requests/SHUserEmailRequest;
.super Ljava/lang/Object;
.source "SHUserEmailRequest.java"


# instance fields
.field private email:Ljava/lang/String;

.field private language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;->email:Ljava/lang/String;

    .line 18
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lbike/smarthalo/app/api/requests/SHUserEmailRequest;->language:Ljava/lang/String;

    return-void
.end method
