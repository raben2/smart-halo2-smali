.class Llayout/statusBar/StatusBarLayout$11;
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

.field final synthetic val$helpCardListener:Llayout/StatusBarFragment$IHelpCardListener;


# direct methods
.method constructor <init>(Llayout/statusBar/StatusBarLayout;Llayout/StatusBarFragment$IHelpCardListener;)V
    .locals 0

    .line 348
    iput-object p1, p0, Llayout/statusBar/StatusBarLayout$11;->this$0:Llayout/statusBar/StatusBarLayout;

    iput-object p2, p0, Llayout/statusBar/StatusBarLayout$11;->val$helpCardListener:Llayout/StatusBarFragment$IHelpCardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 351
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$11;->this$0:Llayout/statusBar/StatusBarLayout;

    invoke-static {p1}, Llayout/statusBar/StatusBarLayout;->access$000(Llayout/statusBar/StatusBarLayout;)Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lbike/smarthalo/app/databinding/StatusBarLayoutBinding;->helpCard:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Llayout/statusBar/StatusBarLayout;->setHelpCardVisibility(Z)V

    .line 353
    iget-object p1, p0, Llayout/statusBar/StatusBarLayout$11;->val$helpCardListener:Llayout/StatusBarFragment$IHelpCardListener;

    if-eqz p1, :cond_1

    .line 354
    invoke-interface {p1}, Llayout/StatusBarFragment$IHelpCardListener;->onHelpCardClicked()V

    :cond_1
    return-void
.end method
