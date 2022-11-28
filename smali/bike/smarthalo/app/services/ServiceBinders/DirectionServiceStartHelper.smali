.class public Lbike/smarthalo/app/services/ServiceBinders/DirectionServiceStartHelper;
.super Ljava/lang/Object;
.source "DirectionServiceStartHelper.java"


# static fields
.field public static final EXTRA_CURRENT_LOCATION:Ljava/lang/String; = "EXTRA_CURRENT_LOCATION"

.field public static final EXTRA_DESTINATION:Ljava/lang/String; = "EXTRA_DESTINATION"

.field public static final EXTRA_GPX_FILE_PATH:Ljava/lang/String; = "EXTRA_GPX_FILE_PATH"

.field public static final EXTRA_ROUTE_TYPE:Ljava/lang/String; = "EXTRA_ROUTE_TYPE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startServiceForDirectNavigation(Landroid/content/Context;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_DESTINATION"

    .line 52
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "START_NAVIGATION_ACTION"

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceForGPXNavigation(Landroid/content/Context;Landroid/location/Location;Landroid/net/Uri;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_CURRENT_LOCATION"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "EXTRA_GPX_FILE_PATH"

    .line 44
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startServiceForNavigation(Landroid/content/Context;Landroid/location/Location;Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;Lbike/smarthalo/app/models/SHLocation;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lbike/smarthalo/app/models/PresentationModels/AlternateRouteType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/models/SHLocation;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbike/smarthalo/app/navigation/SHDirectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXTRA_CURRENT_LOCATION"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "EXTRA_ROUTE_TYPE"

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "EXTRA_DESTINATION"

    .line 32
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
