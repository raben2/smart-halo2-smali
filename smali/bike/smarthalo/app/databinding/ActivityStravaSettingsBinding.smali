.class public abstract Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityStravaSettingsBinding.java"


# instance fields
.field public final autoUploadSwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final disconnectAccount:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final profilePicture:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final ridePrivacyDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rideUploadDescription:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final statusBarLayer:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final toolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final userName:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/appcompat/widget/SwitchCompat;Landroid/widget/FrameLayout;Lde/hdodenhof/circleimageview/CircleImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/appcompat/widget/Toolbar;Landroid/widget/TextView;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 49
    iput-object p4, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->autoUploadSwitch:Landroidx/appcompat/widget/SwitchCompat;

    .line 50
    iput-object p5, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->disconnectAccount:Landroid/widget/FrameLayout;

    .line 51
    iput-object p6, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->profilePicture:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 52
    iput-object p7, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->ridePrivacyDescription:Landroid/widget/TextView;

    .line 53
    iput-object p8, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->rideUploadDescription:Landroid/widget/TextView;

    .line 54
    iput-object p9, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->statusBarLayer:Landroid/widget/ImageView;

    .line 55
    iput-object p10, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 56
    iput-object p11, p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->userName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 83
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f0d002d

    .line 88
    invoke-static {p1, p0, v0}, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
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

    .line 62
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
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

    const v0, 0x7f0d002d

    .line 68
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;
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

    const v0, 0x7f0d002d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lbike/smarthalo/app/databinding/ActivityStravaSettingsBinding;

    return-object p0
.end method
