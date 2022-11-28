.class public Lbike/smarthalo/app/managers/KeyManager;
.super Ljava/lang/Object;
.source "KeyManager.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-lib"

    .line 9
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getAppConsumerToken()Ljava/lang/String;
.end method

.method public native getInstabugDevKey()Ljava/lang/String;
.end method

.method public native getInstabugProdKey()Ljava/lang/String;
.end method

.method public native getStravaClientId()Ljava/lang/String;
.end method

.method public native getStravaKey()Ljava/lang/String;
.end method

.method public native getValhallaDevKey()Ljava/lang/String;
.end method

.method public native getValhallaProdKey()Ljava/lang/String;
.end method

.method public native getValhallaStagingKey()Ljava/lang/String;
.end method
