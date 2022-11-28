.class Lcom/instabug/survey/ui/i/m/d;
.super Lcom/instabug/library/core/ui/BasePresenter;
.source "ThanksFragmentPresenter.java"

# interfaces
.implements Lcom/instabug/survey/ui/i/m/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instabug/library/core/ui/BasePresenter<",
        "Lcom/instabug/survey/ui/i/m/c;",
        ">;",
        "Lcom/instabug/survey/ui/i/m/b;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/instabug/survey/ui/i/m/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/core/ui/BasePresenter;-><init>(Lcom/instabug/library/core/ui/BaseContract$View;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/survey/models/Survey;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/m/c;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 10
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 11
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    sget p1, Lcom/instabug/survey/R$string;->instabug_store_rating_survey_thanks_subtitle:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 22
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_STORE_RATING_THANKS_SUBTITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouMessage()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouMessage()Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_CUSTOM_THANKS_SUBTITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/m/c;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/instabug/library/Feature;->WHITE_LABELING:Lcom/instabug/library/Feature;

    invoke-static {v1}, Lcom/instabug/library/core/InstabugCore;->getFeatureState(Lcom/instabug/library/Feature;)Lcom/instabug/library/Feature$State;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/Feature$State;->ENABLED:Lcom/instabug/library/Feature$State;

    if-ne v1, v2, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/m/c;->hidePoweredByFooter()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/instabug/survey/ui/i/m/c;->showPoweredByFooter()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/instabug/survey/models/Survey;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/core/ui/BasePresenter;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/ui/i/m/c;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 3
    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 4
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getType()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget p1, Lcom/instabug/survey/R$string;->instabug_store_rating_survey_thanks_title:I

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_STORE_RATING_THANKS_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_2
    invoke-virtual {p1}, Lcom/instabug/survey/models/Survey;->getThankYouTitle()Ljava/lang/String;

    move-result-object p1

    .line 18
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->SURVEYS_CUSTOM_THANKS_TITLE:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    invoke-static {v0, p1}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method
