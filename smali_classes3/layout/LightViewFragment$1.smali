.class Llayout/LightViewFragment$1;
.super Ljava/lang/Object;
.source "LightViewFragment.java"

# interfaces
.implements Llayout/SettingsSwitch$SettingButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/LightViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/LightViewFragment;


# direct methods
.method constructor <init>(Llayout/LightViewFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Llayout/LightViewFragment$1;->this$0:Llayout/LightViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftButtonPressed()V
    .locals 2

    .line 63
    iget-object v0, p0, Llayout/LightViewFragment$1;->this$0:Llayout/LightViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llayout/LightViewFragment;->access$000(Llayout/LightViewFragment;Z)V

    return-void
.end method

.method public onRightButtonPressed()V
    .locals 2

    .line 68
    iget-object v0, p0, Llayout/LightViewFragment$1;->this$0:Llayout/LightViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llayout/LightViewFragment;->access$000(Llayout/LightViewFragment;Z)V

    return-void
.end method
