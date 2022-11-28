.class Lcom/instabug/featuresrequest/ui/e/c$i;
.super Ljava/lang/Object;
.source "AddNewFeatureFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/e/c;->L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/e/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {v0}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->h(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/widget/RelativeLayout;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->FEATURES_REQUEST_ADD_FEATURE_TOAST:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    sget v3, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_toast_message:I

    .line 7
    invoke-virtual {v2, v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v1, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Lcom/instabug/featuresrequest/ui/custom/c;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/instabug/featuresrequest/ui/custom/c;

    move-result-object v0

    const/4 v1, -0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/custom/c;->b(I)Lcom/instabug/featuresrequest/ui/custom/c;

    .line 16
    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {v2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instabug/library/util/LocaleHelper;->isRTL(Landroid/content/Context;)Z

    move-result v2

    const/high16 v3, 0x41c00000    # 24.0f

    if-eqz v2, :cond_1

    .line 17
    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_close:I

    invoke-virtual {v0, v2, v3}, Lcom/instabug/featuresrequest/ui/custom/c;->a(IF)Lcom/instabug/featuresrequest/ui/custom/c;

    goto :goto_0

    .line 19
    :cond_1
    sget v2, Lcom/instabug/featuresrequest/R$drawable;->ibg_core_ic_close:I

    invoke-virtual {v0, v2, v3}, Lcom/instabug/featuresrequest/ui/custom/c;->b(IF)Lcom/instabug/featuresrequest/ui/custom/c;

    :goto_0
    const/16 v2, 0xbb8

    .line 21
    invoke-virtual {v0, v2}, Lcom/instabug/featuresrequest/ui/custom/c;->d(I)Lcom/instabug/featuresrequest/ui/custom/c;

    .line 22
    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/c;->b()Landroid/view/View;

    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/e/c$i;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {v3}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/instabug/featuresrequest/R$color;->ib_fr_new_feature_toast_bg:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 25
    sget v3, Lcom/instabug/featuresrequest/R$id;->snackbar_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 26
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/custom/c;->d()V

    return-void
.end method
