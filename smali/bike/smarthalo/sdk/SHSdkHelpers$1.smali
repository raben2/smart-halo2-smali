.class final Lbike/smarthalo/sdk/SHSdkHelpers$1;
.super Ljava/lang/Object;
.source "SHSdkHelpers.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/sdk/SHSdkHelpers;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lbike/smarthalo/sdk/SHSdkHelpers$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    iget-object p1, p0, Lbike/smarthalo/sdk/SHSdkHelpers$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lbike/smarthalo/sdk/SHSdkHelpers;->startScanningAndFinishActivity(Landroid/app/Activity;)V

    return-void
.end method
