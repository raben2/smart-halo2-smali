.class Llayout/statusBar/StatusBarLayout$12;
.super Ljava/lang/Object;
.source "StatusBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llayout/statusBar/StatusBarLayout;->initialize(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llayout/statusBar/StatusBarLayout;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;)V
    .locals 0

    .line 359
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$12;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 362
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$12;->this$0:Llayout/statusBar/StatusBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Llayout/statusBar/StatusBarLayout;->setHelpCardVisibility(Z)V

    return-void
.end method
