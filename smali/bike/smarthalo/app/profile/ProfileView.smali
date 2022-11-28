.class public final Lbike/smarthalo/app/profile/ProfileView;
.super Lbike/smarthalo/app/navigationFlow/NavigationFlowView;
.source "ProfileView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/profile/ProfileView$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileView.kt\nbike/smarthalo/app/profile/ProfileView\n*L\n1#1,129:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0012H\u0016J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lbike/smarthalo/app/profile/ProfileView;",
        "Lbike/smarthalo/app/navigationFlow/NavigationFlowView;",
        "presenter",
        "Lbike/smarthalo/app/profile/ProfilePresenterContract;",
        "innerView",
        "Landroid/view/View;",
        "analyticsManager",
        "Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "(Lbike/smarthalo/app/profile/ProfilePresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V",
        "getAnalyticsManager",
        "()Lbike/smarthalo/app/analytics/AnalyticsContract;",
        "getPresenter",
        "()Lbike/smarthalo/app/profile/ProfilePresenterContract;",
        "setPresenter",
        "(Lbike/smarthalo/app/profile/ProfilePresenterContract;)V",
        "viewStateSubscription",
        "Lio/reactivex/disposables/Disposable;",
        "onHidden",
        "",
        "onShown",
        "onViewStateChanged",
        "viewState",
        "Lbike/smarthalo/app/profile/ProfileViewState;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lbike/smarthalo/app/profile/ProfileView$Companion;

.field private static final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private presenter:Lbike/smarthalo/app/profile/ProfilePresenterContract;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private viewStateSubscription:Lio/reactivex/disposables/Disposable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbike/smarthalo/app/profile/ProfileView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbike/smarthalo/app/profile/ProfileView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lbike/smarthalo/app/profile/ProfileView;->Companion:Lbike/smarthalo/app/profile/ProfileView$Companion;

    .line 34
    const-class v0, Lbike/smarthalo/app/profile/ProfileView;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    sput-object v0, Lbike/smarthalo/app/profile/ProfileView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lbike/smarthalo/app/profile/ProfilePresenterContract;Landroid/view/View;Lbike/smarthalo/app/analytics/AnalyticsContract;)V
    .locals 6
    .param p1    # Lbike/smarthalo/app/profile/ProfilePresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lbike/smarthalo/app/analytics/AnalyticsContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "presenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "innerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lbike/smarthalo/app/profile/ProfileView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lbike/smarthalo/app/navigationFlow/NavigationFlowView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileView;->presenter:Lbike/smarthalo/app/profile/ProfilePresenterContract;

    iput-object p3, p0, Lbike/smarthalo/app/profile/ProfileView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    .line 40
    sget p1, Lbike/smarthalo/app/R$id;->firstNameEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Llayout/viewEvents/DefaultedTextWatcher;

    .line 41
    new-instance v0, Lbike/smarthalo/app/profile/ProfileView$1;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/profile/ProfileView$1;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    sget p1, Lbike/smarthalo/app/R$id;->lastNameEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Llayout/viewEvents/DefaultedTextWatcher;

    .line 45
    new-instance v0, Lbike/smarthalo/app/profile/ProfileView$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/profile/ProfileView$2;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    move-object v3, v0

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v0, p3

    .line 44
    invoke-direct/range {v0 .. v5}, Llayout/viewEvents/DefaultedTextWatcher;-><init>(Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function4;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p3, Landroid/text/TextWatcher;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 48
    sget p1, Lbike/smarthalo/app/R$id;->weightEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$3;

    invoke-direct {p3, p0}, Lbike/smarthalo/app/profile/ProfileView$3;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    sget p1, Lbike/smarthalo/app/R$id;->genderEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$4;

    invoke-direct {p3, p0}, Lbike/smarthalo/app/profile/ProfileView$4;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget p1, Lbike/smarthalo/app/R$id;->heightEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$5;

    invoke-direct {p3, p0}, Lbike/smarthalo/app/profile/ProfileView$5;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget p1, Lbike/smarthalo/app/R$id;->displayEmailEditText:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string p3, "innerView.displayEmailEditText"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setEnabled(Z)V

    .line 54
    sget p1, Lbike/smarthalo/app/R$id;->weightRadioGroup:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$6;

    invoke-direct {p3, p0, p2}, Lbike/smarthalo/app/profile/ProfileView$6;-><init>(Lbike/smarthalo/app/profile/ProfileView;Landroid/view/View;)V

    check-cast p3, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 58
    sget p1, Lbike/smarthalo/app/R$id;->heightRadioGroup:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$7;

    invoke-direct {p3, p0, p2}, Lbike/smarthalo/app/profile/ProfileView$7;-><init>(Lbike/smarthalo/app/profile/ProfileView;Landroid/view/View;)V

    check-cast p3, Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {p1, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 62
    sget p1, Lbike/smarthalo/app/R$id;->saveButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget-object p3, Lbike/smarthalo/app/profile/ProfileView$8;->INSTANCE:Lbike/smarthalo/app/profile/ProfileView$8;

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    sget p1, Lbike/smarthalo/app/R$id;->saveButton:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$9;

    invoke-direct {p3, p0, p2}, Lbike/smarthalo/app/profile/ProfileView$9;-><init>(Lbike/smarthalo/app/profile/ProfileView;Landroid/view/View;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    new-instance p1, Lbike/smarthalo/app/profile/ProfileView$onClickBirthday$1;

    invoke-direct {p1, p0, p2}, Lbike/smarthalo/app/profile/ProfileView$onClickBirthday$1;-><init>(Lbike/smarthalo/app/profile/ProfileView;Landroid/view/View;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 78
    sget p3, Lbike/smarthalo/app/R$id;->lastNameEditText:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance v0, Lbike/smarthalo/app/profile/ProfileView$10;

    invoke-direct {v0, p1}, Lbike/smarthalo/app/profile/ProfileView$10;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {p3, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 85
    sget p3, Lbike/smarthalo/app/R$id;->birthdateEditText:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/textfield/TextInputEditText;

    new-instance p3, Lbike/smarthalo/app/profile/ProfileView$11;

    invoke-direct {p3, p1}, Lbike/smarthalo/app/profile/ProfileView$11;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lbike/smarthalo/app/profile/ProfileView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$onViewStateChanged(Lbike/smarthalo/app/profile/ProfileView;Lbike/smarthalo/app/profile/ProfileViewState;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lbike/smarthalo/app/profile/ProfileView;->onViewStateChanged(Lbike/smarthalo/app/profile/ProfileViewState;)V

    return-void
.end method

.method private final onViewStateChanged(Lbike/smarthalo/app/profile/ProfileViewState;)V
    .locals 4

    .line 102
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->weightEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getDisplayWeight()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->heightEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getDisplayHeight()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->displayEmailEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getEmail()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->isInitializing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->firstNameEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getFirstName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->lastNameEditText:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getLastName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getGender()Lbike/smarthalo/app/models/userModels/Gender;

    move-result-object v0

    sget-object v1, Lbike/smarthalo/app/profile/ProfileView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lbike/smarthalo/app/models/userModels/Gender;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    goto :goto_0

    .line 116
    :pswitch_0
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110142

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :pswitch_1
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110141

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f11013f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :pswitch_3
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110140

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v2

    sget v3, Lbike/smarthalo/app/R$id;->genderEditText:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputEditText;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v2, Lbike/smarthalo/app/R$id;->birthdateEditText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputEditText;

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getBirthDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lbike/smarthalo/app/extensions/DateExtensionsKt;->yearMonthDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->birthdateError:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "innerView.birthdateError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasBirthdateError()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->firstNameError:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "innerView.firstNameError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasFirstNameError()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->lastNameError:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "innerView.lastNameError"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->getHasLastNameError()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    invoke-virtual {p0}, Lbike/smarthalo/app/profile/ProfileView;->getInnerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lbike/smarthalo/app/R$id;->saveButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const-string v1, "innerView.saveButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lbike/smarthalo/app/profile/ProfileViewState;->isSaveVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x8

    :goto_4
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAnalyticsManager()Lbike/smarthalo/app/analytics/AnalyticsContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    return-object v0
.end method

.method public final getPresenter()Lbike/smarthalo/app/profile/ProfilePresenterContract;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 30
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->presenter:Lbike/smarthalo/app/profile/ProfilePresenterContract;

    return-object v0
.end method

.method public onHidden()V
    .locals 1

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    invoke-static {v0}, Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;->safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onShown()V
    .locals 2

    .line 89
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->analyticsManager:Lbike/smarthalo/app/analytics/AnalyticsContract;

    sget-object v1, Lbike/smarthalo/app/analytics/AnalyticsScreenViews;->USER_PROFILE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lbike/smarthalo/app/analytics/AnalyticsContract;->sendScreenViewEvent(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->presenter:Lbike/smarthalo/app/profile/ProfilePresenterContract;

    .line 92
    invoke-interface {v0}, Lbike/smarthalo/app/profile/ProfilePresenterContract;->getObservableViewState()Lio/reactivex/Flowable;

    move-result-object v0

    .line 93
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v0

    .line 94
    new-instance v1, Lbike/smarthalo/app/profile/ProfileView$onShown$1;

    invoke-direct {v1, p0}, Lbike/smarthalo/app/profile/ProfileView$onShown$1;-><init>(Lbike/smarthalo/app/profile/ProfileView;)V

    check-cast v1, Lio/reactivex/functions/Consumer;

    invoke-virtual {v0, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/profile/ProfileView;->viewStateSubscription:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public final setPresenter(Lbike/smarthalo/app/profile/ProfilePresenterContract;)V
    .locals 1
    .param p1    # Lbike/smarthalo/app/profile/ProfilePresenterContract;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lbike/smarthalo/app/profile/ProfileView;->presenter:Lbike/smarthalo/app/profile/ProfilePresenterContract;

    return-void
.end method
