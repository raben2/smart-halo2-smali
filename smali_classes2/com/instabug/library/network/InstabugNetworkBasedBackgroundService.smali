.class public abstract Lcom/instabug/library/network/InstabugNetworkBasedBackgroundService;
.super Landroidx/core/app/InstabugBackgroundService;
.source "InstabugNetworkBasedBackgroundService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/core/app/InstabugBackgroundService;-><init>()V

    return-void
.end method


# virtual methods
.method protected mustHaveNetworkConnection()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
