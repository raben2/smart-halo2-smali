.class final Lbike/smarthalo/sdk/SHSdkHelpers$2;
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
.field final synthetic val$PermissionRequest:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$permissions:[Ljava/lang/String;

    iput p3, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$PermissionRequest:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 82
    iget-object p1, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$activity:Landroid/app/Activity;

    iget-object p2, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$permissions:[Ljava/lang/String;

    iget v0, p0, Lbike/smarthalo/sdk/SHSdkHelpers$2;->val$PermissionRequest:I

    invoke-static {p1, p2, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
