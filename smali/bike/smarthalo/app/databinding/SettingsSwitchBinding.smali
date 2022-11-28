.class public abstract Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SettingsSwitchBinding.java"


# instance fields
.field public final alarmOffWarning:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final alarmSetWarning:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftButtonIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftButtonText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftButtonView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftIconLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightButtonIcon:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightButtonText:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightButtonView:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightIconLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rootLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchLayout:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 59
    iput-object p4, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->alarmOffWarning:Landroid/widget/ImageView;

    .line 60
    iput-object p5, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->alarmSetWarning:Landroid/widget/ImageView;

    .line 61
    iput-object p6, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonIcon:Landroid/widget/ImageView;

    .line 62
    iput-object p7, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonText:Landroid/widget/TextView;

    .line 63
    iput-object p8, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftButtonView:Landroid/widget/RelativeLayout;

    .line 64
    iput-object p9, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->leftIconLayout:Landroid/widget/RelativeLayout;

    .line 65
    iput-object p10, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonIcon:Landroid/widget/ImageView;

    .line 66
    iput-object p11, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonText:Landroid/widget/TextView;

    .line 67
    iput-object p12, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightButtonView:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p13, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rightIconLayout:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p14, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->rootLayout:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p15, p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->switchLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d011a

    .line 102
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 87
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
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

    .line 76
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
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

    const v0, 0x7f0d011a

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/SettingsSwitchBinding;
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

    const v0, 0x7f0d011a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/SettingsSwitchBinding;

    return-object p0
.end method
