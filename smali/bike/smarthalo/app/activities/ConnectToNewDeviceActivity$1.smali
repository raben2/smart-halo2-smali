.class Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;
.super Ljava/lang/Object;
.source "ConnectToNewDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;->this$0:Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 38
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;->this$0:Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    const-class v1, Lbike/smarthalo/app/activities/ScanResultsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;->this$0:Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    iget-object p1, p0, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity$1;->this$0:Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;

    invoke-virtual {p1}, Lbike/smarthalo/app/activities/ConnectToNewDeviceActivity;->finish()V

    return-void
.end method
