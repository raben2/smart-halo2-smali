.class Lcom/instabug/chat/f/a$j;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/library/ui/custom/CircularImageView;

.field final synthetic c:Lcom/instabug/chat/e/f;

.field final synthetic d:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;Landroid/app/Activity;Lcom/instabug/library/ui/custom/CircularImageView;Lcom/instabug/chat/e/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$j;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/instabug/chat/f/a$j;->b:Lcom/instabug/library/ui/custom/CircularImageView;

    iput-object p4, p0, Lcom/instabug/chat/f/a$j;->c:Lcom/instabug/chat/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    invoke-static {}, Lcom/instabug/library/Instabug;->getTheme()Lcom/instabug/library/InstabugColorTheme;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;Lcom/instabug/library/InstabugColorTheme;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$id;->replyButton:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 4
    iget-object v1, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    invoke-static {v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/instabug/chat/R$id;->dismissButton:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 5
    sget-object v2, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPLIES_NOTIFICATION_REPLY_BUTTON:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v3, p0, Lcom/instabug/chat/f/a$j;->a:Landroid/app/Activity;

    .line 6
    invoke-static {v3}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v3

    sget v4, Lcom/instabug/chat/R$string;->instabug_str_reply:I

    iget-object v5, p0, Lcom/instabug/chat/f/a$j;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v5}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2, v3}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    sget-object v0, Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;->REPLIES_NOTIFICATION_DISMISS_BUTTON:Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;

    iget-object v2, p0, Lcom/instabug/chat/f/a$j;->a:Landroid/app/Activity;

    .line 14
    invoke-static {v2}, Lcom/instabug/library/Instabug;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    sget v3, Lcom/instabug/chat/R$string;->instabug_str_dismiss:I

    iget-object v4, p0, Lcom/instabug/chat/f/a$j;->a:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/instabug/library/util/LocaleUtils;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v0, v2}, Lcom/instabug/library/util/PlaceHolderUtils;->getPlaceHolder(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->b:Lcom/instabug/library/ui/custom/CircularImageView;

    sget v1, Lcom/instabug/chat/R$drawable;->ibg_core_ic_avatar:I

    invoke-virtual {v0, v1}, Lcom/instabug/library/ui/custom/CircularImageView;->setBackgroundResource(I)V

    .line 22
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    invoke-static {v0}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$id;->senderNameTextView:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 23
    iget-object v1, p0, Lcom/instabug/chat/f/a$j;->d:Lcom/instabug/chat/f/a;

    invoke-static {v1}, Lcom/instabug/chat/f/a;->a(Lcom/instabug/chat/f/a;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/instabug/chat/R$id;->senderMessageTextView:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 24
    iget-object v2, p0, Lcom/instabug/chat/f/a$j;->c:Lcom/instabug/chat/e/f;

    invoke-virtual {v2}, Lcom/instabug/chat/e/f;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 25
    iget-object v2, p0, Lcom/instabug/chat/f/a$j;->c:Lcom/instabug/chat/e/f;

    invoke-virtual {v2}, Lcom/instabug/chat/e/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->c:Lcom/instabug/chat/e/f;

    invoke-virtual {v0}, Lcom/instabug/chat/e/f;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/instabug/chat/f/a$j;->c:Lcom/instabug/chat/e/f;

    invoke-virtual {v0}, Lcom/instabug/chat/e/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
