.class public Lcom/instabug/featuresrequest/b;
.super Ljava/lang/Object;
.source "FeaturesRequestPluginWrapper.java"


# static fields
.field private static final a:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    sput-object v0, Lcom/instabug/featuresrequest/b;->a:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REQUEST_FEATURE_DESCRIPTION:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 4
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$string;->ib_fr_request_feature_description:I

    invoke-static {v1, v2, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/instabug/library/core/plugin/PluginPromptOption;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/featuresrequest/f/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcom/instabug/library/core/plugin/PluginPromptOption;

    invoke-direct {v1}, Lcom/instabug/library/core/plugin/PluginPromptOption;-><init>()V

    const/4 v2, 0x5

    .line 5
    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setInvocationMode(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setPromptOptionIdentifier(I)V

    const/4 v2, 0x3

    .line 7
    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOrder(I)V

    .line 8
    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_request_feature:I

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setIcon(I)V

    .line 9
    invoke-static {p0}, Lcom/instabug/featuresrequest/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setTitle(Ljava/lang/String;)V

    .line 10
    invoke-static {p0}, Lcom/instabug/featuresrequest/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setDescription(Ljava/lang/String;)V

    .line 11
    new-instance v2, Lcom/instabug/featuresrequest/b$a;

    invoke-direct {v2, p0}, Lcom/instabug/featuresrequest/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/core/plugin/PluginPromptOption;->setOnInvocationListener(Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;)V

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public static b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    invoke-static {v0}, Lcom/instabug/featuresrequest/FeatureRequests;->setState(Lcom/instabug/library/Feature$State;)V

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REQUEST_FEATURE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    .line 4
    invoke-static {p0}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    sget v2, Lcom/instabug/library/R$string;->instabug_str_request_feature:I

    invoke-static {v1, v2, p0}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/b;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/instabug/featuresrequest/f/c;->a(Landroid/content/Context;)V

    return-void
.end method
