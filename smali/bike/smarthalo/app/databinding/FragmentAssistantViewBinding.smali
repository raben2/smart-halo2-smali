.class public abstract Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentAssistantViewBinding.java"


# instance fields
.field public final assistantNotificationsPageButton:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantSettingsDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantSettingsTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantSoundsSwitch:Llayout/SettingsSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantStatusBar:Llayout/statusBar/StatusBarLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final assistantVolume:Landroid/widget/SeekBar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final brightnessHigh:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final brightnessLow:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchInputDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchInputPageButton:Landroid/widget/RelativeLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final touchInputTitle:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Llayout/SettingsSwitch;Llayout/statusBar/StatusBarLayout;Landroid/widget/SeekBar;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 60
    iput-object p4, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantNotificationsPageButton:Landroid/widget/RelativeLayout;

    .line 61
    iput-object p5, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantSettingsDescription:Landroid/widget/TextView;

    .line 62
    iput-object p6, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantSettingsTitle:Landroid/widget/TextView;

    .line 63
    iput-object p7, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantSoundsSwitch:Llayout/SettingsSwitch;

    .line 64
    iput-object p8, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantStatusBar:Llayout/statusBar/StatusBarLayout;

    .line 65
    iput-object p9, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->assistantVolume:Landroid/widget/SeekBar;

    .line 66
    iput-object p10, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->brightnessHigh:Landroid/widget/ImageView;

    .line 67
    iput-object p11, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->brightnessLow:Landroid/widget/ImageView;

    .line 68
    iput-object p12, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->touchInputDescription:Landroid/widget/TextView;

    .line 69
    iput-object p13, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->touchInputPageButton:Landroid/widget/RelativeLayout;

    .line 70
    iput-object p14, p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->touchInputTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d005a

    .line 102
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
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

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
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

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
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

    const v0, 0x7f0d005a

    .line 82
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;
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

    const v0, 0x7f0d005a

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/FragmentAssistantViewBinding;

    return-object p0
.end method
