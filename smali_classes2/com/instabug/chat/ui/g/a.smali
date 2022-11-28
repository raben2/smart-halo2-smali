.class Lcom/instabug/chat/ui/g/a;
.super Landroid/widget/BaseAdapter;
.source "ChatsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/ui/g/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/chat/ui/g/a;->a:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/instabug/chat/ui/g/a$b;Lcom/instabug/chat/e/b;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding chat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->e()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/instabug/chat/e/d$a;

    invoke-direct {v1}, Lcom/instabug/chat/e/d$a;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->b()Lcom/instabug/chat/e/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->a(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 36
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v3

    .line 37
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/chat/e/a;

    invoke-virtual {v3}, Lcom/instabug/chat/e/a;->f()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, -0x1

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "video_gallery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_1
    const-string v5, "extra_video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    const-string v5, "extra_image"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_3
    const-string v5, "audio"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_4
    const-string v5, "image_gallery"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 51
    :pswitch_0
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->a(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/instabug/library/R$string;->instabug_str_video:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 52
    :pswitch_1
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->a(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/instabug/library/R$string;->instabug_str_audio:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 53
    :pswitch_2
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->a(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v3

    sget v4, Lcom/instabug/library/R$string;->instabug_str_image:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_3
    :goto_3
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, ""

    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {v0}, Lcom/instabug/chat/e/d;->o()Z

    move-result v0

    if-nez v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chat SenderName: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->b(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 80
    :cond_4
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->b(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_4
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->c(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    .line 83
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugDateFormatter;->formatConversationLastMessageDate(J)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->i()I

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 89
    sget v4, Lcom/instabug/library/R$attr;->instabug_unread_message_background_color:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 91
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->d(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 92
    sget v0, Lcom/instabug/library/R$drawable;->ibg_core_bg_white_oval:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 96
    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->e(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_5
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->e(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->i()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->e(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 102
    :cond_6
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->d(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 103
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->e(Lcom/instabug/chat/ui/g/a$b;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :goto_5
    invoke-virtual {p3}, Lcom/instabug/chat/e/b;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 107
    new-instance v0, Lcom/instabug/chat/ui/g/a$a;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/instabug/chat/ui/g/a$a;-><init>(Lcom/instabug/chat/ui/g/a;Lcom/instabug/chat/e/b;Landroid/content/Context;Lcom/instabug/chat/ui/g/a$b;)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 132
    :cond_7
    invoke-static {p2}, Lcom/instabug/chat/ui/g/a$b;->f(Lcom/instabug/chat/ui/g/a$b;)Lcom/instabug/library/ui/custom/CircularImageView;

    move-result-object p1

    sget p2, Lcom/instabug/chat/R$drawable;->ibg_core_ic_avatar:I

    invoke-virtual {p1, p2}, Lcom/instabug/library/ui/custom/CircularImageView;->setImageResource(I)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x318ec392 -> :sswitch_4
        0x58d9bd6 -> :sswitch_3
        0x6543546c -> :sswitch_2
        0x65f8bf8c -> :sswitch_1
        0x6d19878e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/b;",
            ">;)V"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/instabug/chat/ui/g/a;->a:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/g/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/instabug/chat/e/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/g/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/b;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/a;->getItem(I)Lcom/instabug/chat/e/b;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/a;->getItem(I)Lcom/instabug/chat/e/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/chat/e/b;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/instabug/chat/R$layout;->instabug_conversation_list_item:I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 4
    new-instance p3, Lcom/instabug/chat/ui/g/a$b;

    invoke-direct {p3, p2}, Lcom/instabug/chat/ui/g/a$b;-><init>(Landroid/view/View;)V

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/chat/ui/g/a$b;

    .line 10
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/g/a;->getItem(I)Lcom/instabug/chat/e/b;

    move-result-object p1

    invoke-direct {p0, v0, p3, p1}, Lcom/instabug/chat/ui/g/a;->a(Landroid/content/Context;Lcom/instabug/chat/ui/g/a$b;Lcom/instabug/chat/e/b;)V

    return-object p2
.end method
