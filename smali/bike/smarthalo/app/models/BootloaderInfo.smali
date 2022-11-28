.class public Lbike/smarthalo/app/models/BootloaderInfo;
.super Ljava/lang/Object;
.source "BootloaderInfo.java"


# instance fields
.field public address:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lbike/smarthalo/app/models/BootloaderInfo;->address:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lbike/smarthalo/app/models/BootloaderInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public static getEmptyValue()Lbike/smarthalo/app/models/BootloaderInfo;
    .locals 3

    .line 14
    new-instance v0, Lbike/smarthalo/app/models/BootloaderInfo;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lbike/smarthalo/app/models/BootloaderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isInitialized()Z
    .locals 2

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/models/BootloaderInfo;->address:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/models/BootloaderInfo;->deviceName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
