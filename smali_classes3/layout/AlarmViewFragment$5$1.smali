.class Llayout/AlarmViewFragment$5$1;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Lbike/smarthalo/app/helpers/SHDialogHelper$SHDialogOnClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment$5;->onResponse(Lbike/smarthalo/app/models/AlarmUpdateCallback$AlarmUpdateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Llayout/AlarmViewFragment$5;


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment$5;)V
    .locals 0

    .line 244
    iput-object p1, p0, Llayout/AlarmViewFragment$5$1;->this$1:Llayout/AlarmViewFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 247
    iget-object v0, p0, Llayout/AlarmViewFragment$5$1;->this$1:Llayout/AlarmViewFragment$5;

    iget-object v0, v0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    invoke-static {v0}, Llayout/AlarmViewFragment;->access$500(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Llayout/AlarmViewFragment$5$1;->this$1:Llayout/AlarmViewFragment$5;

    iget-object v0, v0, Llayout/AlarmViewFragment$5;->this$0:Llayout/AlarmViewFragment;

    invoke-static {v0}, Llayout/AlarmViewFragment;->access$500(Llayout/AlarmViewFragment;)Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;

    move-result-object v0

    invoke-interface {v0}, Lbike/smarthalo/app/activities/MainActivity$IFirmwareUpdateContract;->onFirmwareUpdateClick()V

    :cond_0
    return-void
.end method
