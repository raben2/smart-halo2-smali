.class Llayout/MapDropMenuFragment$5;
.super Ljava/lang/Object;
.source "MapDropMenuFragment.java"

# interfaces
.implements Llayout/SettingsSwitch$SettingButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/MapDropMenuFragment;->setupSoundButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/MapDropMenuFragment;


# direct methods
.method constructor <init>(Llayout/MapDropMenuFragment;)V
    .locals 0

    .line 154
    iput-object p1, p0, Llayout/MapDropMenuFragment$5;->this$0:Llayout/MapDropMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftButtonPressed()V
    .locals 2

    .line 157
    iget-object v0, p0, Llayout/MapDropMenuFragment$5;->this$0:Llayout/MapDropMenuFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/MapDropMenuFragment;->access$600(Llayout/MapDropMenuFragment;Z)V

    return-void
.end method

.method public onRightButtonPressed()V
    .locals 2

    .line 163
    iget-object v0, p0, Llayout/MapDropMenuFragment$5;->this$0:Llayout/MapDropMenuFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llayout/MapDropMenuFragment;->access$600(Llayout/MapDropMenuFragment;Z)V

    return-void
.end method
