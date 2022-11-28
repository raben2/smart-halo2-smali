.class public final enum Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
.super Ljava/lang/Enum;
.source "BackgroundLocationPermissionPresenter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PermissionRequestState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;",
        "",
        "(Ljava/lang/String;I)V",
        "NotRequested",
        "RequestedDialog",
        "RequestedSystemPage",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

.field public static final enum NotRequested:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

.field public static final enum RequestedDialog:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

.field public static final enum RequestedSystemPage:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    const-string v2, "NotRequested"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->NotRequested:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    const-string v2, "RequestedDialog"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedDialog:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    aput-object v1, v0, v3

    new-instance v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    const-string v2, "RequestedSystemPage"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->RequestedSystemPage:Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    aput-object v1, v0, v3

    sput-object v0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->$VALUES:[Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
    .locals 1

    const-class v0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-object p0
.end method

.method public static values()[Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;
    .locals 1

    sget-object v0, Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->$VALUES:[Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    invoke-virtual {v0}, [Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbike/smarthalo/app/permissions/locationPermission/BackgroundLocationPermissionPresenter$PermissionRequestState;

    return-object v0
.end method
