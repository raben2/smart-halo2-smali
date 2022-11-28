.class public Lbike/smarthalo/app/services/SHDFUService;
.super Lno/nordicsemi/android/dfu/DfuBaseService;
.source "SHDFUService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 15
    const-class v0, Lbike/smarthalo/app/activities/DFUNotificationActivity;

    return-object v0
.end method
