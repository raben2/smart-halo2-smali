.class public final Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;
.super Ljava/lang/Object;
.source "PermissionsCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/permissions/PermissionsCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;",
        "",
        "()V",
        "NOTIFICATION_PERMISSION_SYSTEM_PAGE",
        "",
        "getNOTIFICATION_PERMISSION_SYSTEM_PAGE",
        "()Ljava/lang/String;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lbike/smarthalo/app/permissions/PermissionsCoordinator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNOTIFICATION_PERMISSION_SYSTEM_PAGE()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 46
    invoke-static {}, Lbike/smarthalo/app/permissions/PermissionsCoordinator;->access$getNOTIFICATION_PERMISSION_SYSTEM_PAGE$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
