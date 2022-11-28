.class Llayout/AlarmViewFragment$3;
.super Ljava/lang/Object;
.source "AlarmViewFragment.java"

# interfaces
.implements Llayout/SettingsSwitch$SettingButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/AlarmViewFragment;->getSeverityListener()Llayout/SettingsSwitch$SettingButtonEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/AlarmViewFragment;


# direct methods
.method constructor <init>(Llayout/AlarmViewFragment;)V
    .locals 0

    .line 147
    iput-object p1, p0, Llayout/AlarmViewFragment$3;->this$0:Llayout/AlarmViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftButtonPressed()V
    .locals 2

    .line 150
    iget-object v0, p0, Llayout/AlarmViewFragment$3;->this$0:Llayout/AlarmViewFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Llayout/AlarmViewFragment;->onSeverityChanged(Z)V

    return-void
.end method

.method public onRightButtonPressed()V
    .locals 2

    .line 155
    iget-object v0, p0, Llayout/AlarmViewFragment$3;->this$0:Llayout/AlarmViewFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Llayout/AlarmViewFragment;->onSeverityChanged(Z)V

    return-void
.end method
