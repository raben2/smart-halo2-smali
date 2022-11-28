.class public Lcom/instabug/chat/ui/f/g;
.super Landroid/widget/BaseAdapter;
.source "MessagesListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/chat/ui/f/g$j;,
        Lcom/instabug/chat/ui/f/g$i;
    }
.end annotation


# instance fields
.field private final a:Lcom/instabug/library/internal/media/AudioPlayer;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/ColorFilter;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/ListView;

.field private f:Lcom/instabug/chat/ui/f/g$i;

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;Landroid/widget/ListView;Lcom/instabug/chat/ui/f/g$i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/c;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/widget/ListView;",
            "Lcom/instabug/chat/ui/f/g$i;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/ui/f/g;->g:Z

    .line 6
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g;->b:Ljava/util/List;

    .line 7
    iput-object p3, p0, Lcom/instabug/chat/ui/f/g;->e:Landroid/widget/ListView;

    .line 8
    iput-object p2, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    .line 9
    iput-object p4, p0, Lcom/instabug/chat/ui/f/g;->f:Lcom/instabug/chat/ui/f/g$i;

    .line 10
    new-instance p1, Lcom/instabug/library/internal/media/AudioPlayer;

    invoke-direct {p1}, Lcom/instabug/library/internal/media/AudioPlayer;-><init>()V

    iput-object p1, p0, Lcom/instabug/chat/ui/f/g;->a:Lcom/instabug/library/internal/media/AudioPlayer;

    .line 12
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPrimaryColor()I

    move-result p2

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/instabug/chat/ui/f/g;->c:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/chat/ui/f/g$i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/f/g;->f:Lcom/instabug/chat/ui/f/g$i;

    return-object p0
.end method

.method private a(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 3

    .line 137
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/instabug/library/util/BitmapUtils;->loadBitmap(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->d:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 143
    :cond_1
    :goto_0
    iget-object p2, p2, Lcom/instabug/chat/ui/f/g$j;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/instabug/chat/ui/f/g$b;

    invoke-direct {v0, p0, p1}, Lcom/instabug/chat/ui/f/g$b;-><init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/c;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Lcom/instabug/chat/ui/f/g$j;Lcom/instabug/chat/e/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "viewholder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 8
    sget-object v0, Lcom/instabug/chat/ui/f/g$h;->a:[I

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 65
    :pswitch_0
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->i:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    iget-object v1, p1, Lcom/instabug/chat/ui/f/g$j;->i:Landroid/widget/ImageView;

    .line 69
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/chat/ui/f/g;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 74
    :cond_2
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->b:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->c()J

    move-result-wide v3

    .line 77
    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugDateFormatter;->formatMessageDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0, p2, p1}, Lcom/instabug/chat/ui/f/g;->e(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    .line 82
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 83
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    invoke-direct {p0, p2, p1, v2}, Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto/16 :goto_3

    .line 84
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "viewholder: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->e:Landroid/widget/FrameLayout;

    .line 90
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    iget-object v1, p1, Lcom/instabug/chat/ui/f/g$j;->e:Landroid/widget/FrameLayout;

    .line 92
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/instabug/chat/ui/f/g;->c:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 96
    :cond_4
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->b:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugDateFormatter;->formatMessageDate(J)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-direct {p0, p2, p1}, Lcom/instabug/chat/ui/f/g;->f(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    .line 101
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 103
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    invoke-direct {p0, p2, p1, v2}, Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto/16 :goto_3

    .line 104
    :pswitch_2
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->d:Landroid/widget/ImageView;

    .line 106
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    iget-object v1, p1, Lcom/instabug/chat/ui/f/g$j;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_5
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->b:Landroid/widget/TextView;

    .line 110
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugDateFormatter;->formatMessageDate(J)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0, p2, p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    .line 114
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 116
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    invoke-direct {p0, p2, p1, v2}, Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    goto :goto_3

    .line 117
    :pswitch_3
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->c:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/instabug/library/util/Colorizer;->getPrimaryColorTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    iget-object v1, p1, Lcom/instabug/chat/ui/f/g$j;->c:Landroid/widget/TextView;

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 123
    :cond_6
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 124
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->i()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 125
    invoke-direct {p0, p2, p1}, Lcom/instabug/chat/ui/f/g;->c(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    .line 128
    :cond_7
    :goto_2
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->b:Landroid/widget/TextView;

    .line 129
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/instabug/library/util/InstabugDateFormatter;->formatMessageDate(J)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 133
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_8
    iget-object v0, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 136
    invoke-virtual {p2}, Lcom/instabug/chat/e/c;->f()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/instabug/chat/ui/f/g$j;->a:Lcom/instabug/library/ui/custom/CircularImageView;

    invoke-direct {p0, p2, p1, v2}, Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    :cond_9
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 1

    .line 144
    new-instance v0, Lcom/instabug/chat/ui/f/g$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/instabug/chat/ui/f/g$g;-><init>(Lcom/instabug/chat/ui/f/g;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    invoke-static {v0}, Lcom/instabug/library/util/threading/PoolProvider;->postIOTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/chat/ui/f/g;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/instabug/chat/ui/f/g;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/instabug/chat/ui/f/g;)Lcom/instabug/library/internal/media/AudioPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/f/g;->a:Lcom/instabug/library/internal/media/AudioPlayer;

    return-object p0
.end method

.method private b(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 2

    const-string v0, "Video path not found but main screenshot found, using it"

    .line 2
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p2, Lcom/instabug/chat/ui/f/g$j;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object v0, p2, Lcom/instabug/chat/ui/f/g$j;->h:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p2, Lcom/instabug/chat/ui/f/g$j;->j:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/instabug/chat/ui/f/g$e;

    invoke-direct {v1, p0, p1}, Lcom/instabug/chat/ui/f/g$e;-><init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lcom/instabug/library/util/VideoManipulationUtils;->extractFirstVideoFrame(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p2, p2, Lcom/instabug/chat/ui/f/g$j;->i:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/instabug/chat/ui/f/g;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    return-object p0
.end method

.method private c(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 7

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding MessageActions view  FlatMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->b()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/chat/e/e;

    .line 10
    new-instance v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v4, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v4, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 14
    invoke-virtual {v2}, Lcom/instabug/chat/e/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v4, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    const v5, 0x106000b

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 16
    invoke-static {}, Lcom/instabug/library/core/InstabugCore;->getPrimaryColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/16 v4, 0x1e

    .line 17
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setMaxEms(I)V

    const/4 v4, 0x1

    .line 18
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setMaxLines(I)V

    .line 19
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setId(I)V

    .line 20
    new-instance v4, Lcom/instabug/chat/ui/f/g$a;

    invoke-direct {v4, p0, v2}, Lcom/instabug/chat/ui/f/g$a;-><init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/e;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object v2, p2, Lcom/instabug/chat/ui/f/g$j;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/instabug/library/model/AssetEntity$AssetType;->VIDEO:Lcom/instabug/library/model/AssetEntity$AssetType;

    invoke-static {v0, p1, v1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->createEmptyEntity(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;)Lcom/instabug/library/model/AssetEntity;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g;->d:Landroid/content/Context;

    new-instance v1, Lcom/instabug/chat/ui/f/g$f;

    invoke-direct {v1, p0, p2}, Lcom/instabug/chat/ui/f/g$f;-><init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/ui/f/g$j;)V

    invoke-static {v0, p1, v1}, Lcom/instabug/library/internal/storage/cache/AssetsCacheManager;->getAssetEntity(Landroid/content/Context;Lcom/instabug/library/model/AssetEntity;Lcom/instabug/library/internal/storage/cache/AssetsCacheManager$OnDownloadFinished;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/instabug/chat/ui/f/g;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/instabug/chat/ui/f/g;->g:Z

    return p0
.end method

.method static synthetic e(Lcom/instabug/chat/ui/f/g;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/chat/ui/f/g;->e:Landroid/widget/ListView;

    return-object p0
.end method

.method private e(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/ui/f/g;->b(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/instabug/chat/ui/f/g;->d(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    :goto_0
    return-void
.end method

.method private f(Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->g:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 9
    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 12
    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    :cond_2
    iget-object v1, p2, Lcom/instabug/chat/ui/f/g$j;->e:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/instabug/chat/ui/f/g$c;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/instabug/chat/ui/f/g$c;-><init>(Lcom/instabug/chat/ui/f/g;Lcom/instabug/chat/e/c;Ljava/lang/String;Lcom/instabug/chat/ui/f/g$j;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v1, p0, Lcom/instabug/chat/ui/f/g;->a:Lcom/instabug/library/internal/media/AudioPlayer;

    new-instance v2, Lcom/instabug/chat/ui/f/g$d;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/instabug/chat/ui/f/g$d;-><init>(Lcom/instabug/chat/ui/f/g;Ljava/lang/String;Lcom/instabug/chat/e/c;Lcom/instabug/chat/ui/f/g$j;)V

    invoke-virtual {v1, v2}, Lcom/instabug/library/internal/media/AudioPlayer;->addOnStopListener(Lcom/instabug/library/internal/media/AudioPlayer$OnStopListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/instabug/chat/e/c;",
            ">;)V"
        }
    .end annotation

    .line 145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/chat/e/c;

    .line 148
    invoke-virtual {v1}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v1

    if-nez v1, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 151
    :cond_1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g;->b:Ljava/util/List;

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/instabug/chat/e/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/instabug/chat/e/c;

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/g;->getItem(I)Lcom/instabug/chat/e/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/g;->getItem(I)Lcom/instabug/chat/e/c;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 3
    sget-object v0, Lcom/instabug/chat/ui/f/g$h;->a:[I

    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->g()Lcom/instabug/chat/e/c$b;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    return v1

    .line 13
    :pswitch_0
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    return p1

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const/4 p1, 0x5

    :goto_1
    return p1

    .line 15
    :pswitch_2
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->j()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    :goto_2
    return p1

    .line 16
    :pswitch_3
    invoke-virtual {p1}, Lcom/instabug/chat/e/c;->j()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/g;->getItemViewType(I)I

    move-result v0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 38
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_me:I

    .line 39
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 40
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_video:I

    .line 41
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_video_me:I

    .line 43
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 44
    :pswitch_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_voice:I

    .line 45
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 46
    :pswitch_3
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_voice_me:I

    .line 47
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 48
    :pswitch_4
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_img:I

    .line 49
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 50
    :pswitch_5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_img_me:I

    .line 51
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 52
    :pswitch_6
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item:I

    .line 53
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 54
    :pswitch_7
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/instabug/chat/R$layout;->instabug_message_list_item_me:I

    .line 55
    invoke-virtual {v0, v1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 90
    :goto_0
    new-instance p3, Lcom/instabug/chat/ui/f/g$j;

    invoke-direct {p3, p2}, Lcom/instabug/chat/ui/f/g$j;-><init>(Landroid/view/View;)V

    .line 91
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 94
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/instabug/chat/ui/f/g$j;

    .line 98
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/instabug/chat/ui/f/g;->getItem(I)Lcom/instabug/chat/e/c;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/instabug/chat/ui/f/g;->a(Lcom/instabug/chat/ui/f/g$j;Lcom/instabug/chat/e/c;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_2
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method
