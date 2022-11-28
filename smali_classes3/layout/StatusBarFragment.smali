.class public Llayout/StatusBarFragment;
.super Landroidx/fragment/app/Fragment;
.source "StatusBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llayout/StatusBarFragment$IHelpCardListener;
    }
.end annotation


# instance fields
.field private helpCardListener:Llayout/StatusBarFragment$IHelpCardListener;

.field protected onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

.field protected statusBar:Llayout/statusBar/StatusBarLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public hideHelpCard(Z)V
    .locals 2

    .line 19
    iget-object v0, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Llayout/StatusBarFragment;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1, p1, v1}, Llayout/statusBar/StatusBarLayout;->setHelpCardVisibility(ZZZ)V

    .line 22
    iget-object v0, p0, Llayout/StatusBarFragment;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-interface {v0, v1, p1}, Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;->onHelpCardVisibilityChanged(ZZ)V

    :cond_0
    return-void
.end method

.method protected initializeStatusBar(Landroid/view/View;ILlayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V
    .locals 0

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Llayout/statusBar/StatusBarLayout;

    iput-object p1, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    .line 37
    iget-object p1, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {p0}, Llayout/StatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4, p5}, Llayout/statusBar/StatusBarLayout;->initialize(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    return-void
.end method

.method protected initializeStatusBar(Llayout/statusBar/StatusBarLayout;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V
    .locals 1

    .line 45
    iput-object p1, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    .line 46
    iget-object p1, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    invoke-virtual {p0}, Llayout/StatusBarFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Llayout/statusBar/StatusBarLayout;->initialize(Landroid/content/Context;Llayout/statusBar/StatusBarSwitch$StatusBarSwitchEventListener;ZLlayout/StatusBarFragment$IHelpCardListener;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 59
    iget-object p1, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Llayout/StatusBarFragment;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {p1, v0}, Llayout/statusBar/StatusBarLayout;->initializeHelpCardVisibilitySubscriber(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 52
    iget-object v0, p0, Llayout/StatusBarFragment;->statusBar:Llayout/statusBar/StatusBarLayout;

    iget-object v1, p0, Llayout/StatusBarFragment;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    invoke-virtual {v0, v1}, Llayout/statusBar/StatusBarLayout;->initializeHelpCardVisibilitySubscriber(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V

    return-void
.end method

.method public setOnHelpCardVisibilityListener(Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;)V
    .locals 0

    .line 27
    iput-object p1, p0, Llayout/StatusBarFragment;->onHelpCardVisibilityChanged:Llayout/statusBar/StatusBarLayout$IOnHelpCardVisibilityChanged;

    return-void
.end method
