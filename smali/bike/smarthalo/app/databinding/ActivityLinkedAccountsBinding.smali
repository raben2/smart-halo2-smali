.class public abstract Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityLinkedAccountsBinding.java"


# instance fields
.field public final connectToStrava:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final connectToStravaDescription:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final linkedAccountsList:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarLayer:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stravaAccountState:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final stravaItem:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 43
    iput-object p4, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->connectToStrava:Landroid/widget/ImageView;

    .line 44
    iput-object p5, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->connectToStravaDescription:Landroid/widget/LinearLayout;

    .line 45
    iput-object p6, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->linkedAccountsList:Landroid/widget/LinearLayout;

    .line 46
    iput-object p7, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->statusBarLayer:Landroid/widget/ImageView;

    .line 47
    iput-object p8, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->stravaAccountState:Landroid/widget/TextView;

    .line 48
    iput-object p9, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->stravaItem:Landroid/widget/LinearLayout;

    .line 49
    iput-object p10, p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d0025

    .line 81
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 55
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0025

    .line 61
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0d0025

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityLinkedAccountsBinding;

    return-object p0
.end method
