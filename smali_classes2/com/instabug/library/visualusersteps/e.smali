.class public Lcom/instabug/library/visualusersteps/e;
.super Ljava/lang/Object;
.source "TouchedViewsProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/visualusersteps/e$e;
    }
.end annotation


# static fields
.field private static h:Lcom/instabug/library/visualusersteps/e;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/instabug/library/visualusersteps/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Lcom/instabug/library/visualusersteps/d;

.field private g:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->c:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->d:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->e:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/instabug/library/visualusersteps/d;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/d;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/e;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    return-object p0
.end method

.method private a(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 3
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    new-instance v2, Lcom/instabug/library/visualusersteps/e$d;

    invoke-direct {v2, p0, p3, p2}, Lcom/instabug/library/visualusersteps/e$d;-><init>(Lcom/instabug/library/visualusersteps/e;Lcom/instabug/library/visualusersteps/e$e;Lcom/instabug/library/visualusersteps/c;)V

    invoke-static {p1, v0, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->saveDrawableBitmap(Landroid/graphics/drawable/Drawable;JLcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 3
    .param p3    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 211
    new-instance v2, Lcom/instabug/library/visualusersteps/e$c;

    invoke-direct {v2, p0, p4, p3, p1}, Lcom/instabug/library/visualusersteps/e$c;-><init>(Lcom/instabug/library/visualusersteps/e;Lcom/instabug/library/visualusersteps/e$e;Lcom/instabug/library/visualusersteps/c;Landroid/view/View;)V

    invoke-static {p2, v0, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->saveDrawableBitmap(Landroid/graphics/drawable/Drawable;JLcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    return-void
.end method

.method private a(Landroid/view/View;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 4
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 183
    instance-of v0, p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    if-eqz v0, :cond_0

    .line 184
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    if-eqz v0, :cond_1

    .line 187
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;

    .line 188
    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 191
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 192
    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "the button \"%s\""

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_1

    .line 195
    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 196
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_1

    .line 198
    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 199
    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, p1, v2

    const-string v0, "the button \"%s\""

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_1

    .line 203
    :cond_4
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_1

    .line 208
    :cond_5
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_1
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 1
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/ViewGroup;)V

    .line 65
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/e;->b()V

    .line 68
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/e;->e()V

    .line 71
    invoke-direct {p0}, Lcom/instabug/library/visualusersteps/e;->c()Ljava/lang/String;

    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 85
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/Button;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 4
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 107
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/Button;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 114
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/Button;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 118
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/ImageButton;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 4
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 125
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 126
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/ImageButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 131
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_0

    .line 133
    :cond_1
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 140
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/widget/ImageView;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 2
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 91
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "the image \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "an image"

    .line 96
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 3
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the label \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "a label"

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 1
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 141
    new-instance v0, Lcom/instabug/library/visualusersteps/e$b;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/instabug/library/visualusersteps/e$b;-><init>(Lcom/instabug/library/visualusersteps/e;Lcom/google/android/material/tabs/TabLayout;Lcom/instabug/library/visualusersteps/e$e;Lcom/instabug/library/visualusersteps/c;)V

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/e;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_1

    .line 82
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 84
    invoke-direct {p0, v1, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/widget/CompoundButton;)Z
    .locals 1

    .line 61
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/instabug/library/visualusersteps/e;Landroid/view/View;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/widget/ImageButton;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 2
    .param p2    # Lcom/instabug/library/visualusersteps/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/ImageButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 17
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p3, p2, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/library/visualusersteps/b;

    .line 4
    iget-object v3, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/instabug/library/visualusersteps/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "UI that contains \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static d()Lcom/instabug/library/visualusersteps/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/library/visualusersteps/e;->h:Lcom/instabug/library/visualusersteps/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/instabug/library/visualusersteps/e;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/e;-><init>()V

    sput-object v0, Lcom/instabug/library/visualusersteps/e;->h:Lcom/instabug/library/visualusersteps/e;

    .line 4
    :cond_0
    sget-object v0, Lcom/instabug/library/visualusersteps/e;->h:Lcom/instabug/library/visualusersteps/e;

    return-object v0
.end method

.method private e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    new-instance v1, Lcom/instabug/library/visualusersteps/e$a;

    invoke-direct {v1, p0}, Lcom/instabug/library/visualusersteps/e$a;-><init>(Lcom/instabug/library/visualusersteps/e;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method a(Landroid/widget/Button;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 214
    invoke-virtual {p1}, Landroid/widget/Button;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 215
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 216
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v1
.end method

.method a(Landroid/widget/ImageButton;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 209
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->c:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->d:Ljava/util/List;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->e:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->g:Ljava/lang/StringBuilder;

    .line 10
    new-instance v0, Lcom/instabug/library/visualusersteps/d;

    invoke-direct {v0}, Lcom/instabug/library/visualusersteps/d;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    return-void
.end method

.method public a(Landroid/view/View;Lcom/instabug/library/visualusersteps/e$e;)V
    .locals 5

    .line 11
    invoke-static {}, Lcom/instabug/library/visualusersteps/h;->d()Lcom/instabug/library/visualusersteps/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/visualusersteps/h;->b()Lcom/instabug/library/visualusersteps/c;

    move-result-object v0

    .line 13
    invoke-virtual {p0}, Lcom/instabug/library/visualusersteps/e;->a()V

    .line 15
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    check-cast p1, Landroid/widget/Button;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/Button;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 17
    :cond_0
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->i(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/TextView;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 19
    :cond_1
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    check-cast p1, Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/google/android/material/tabs/TabLayout;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 21
    :cond_2
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->f(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 23
    :cond_3
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->c(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/f;->j(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 25
    check-cast p1, Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/widget/ImageButton;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 27
    :cond_4
    check-cast p1, Landroid/widget/ImageButton;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/ImageButton;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 29
    :cond_5
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 30
    check-cast p1, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/ImageView;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto/16 :goto_2

    .line 31
    :cond_6
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->h(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    .line 33
    move-object v1, p1

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-direct {p0, v1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/CompoundButton;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 34
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 35
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "the switch \"%s\""

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_7
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "the switch \"%s\""

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string p1, "a switch"

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v1, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p2, v0, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_2

    .line 44
    :cond_9
    invoke-static {p1}, Lcom/instabug/library/visualusersteps/f;->g(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 45
    move-object v1, p1

    check-cast v1, Landroid/widget/SeekBar;

    .line 47
    invoke-direct {p0, p1}, Lcom/instabug/library/visualusersteps/e;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x2

    .line 48
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "the slider \"%s\" to %d"

    .line 50
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 53
    :cond_a
    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v2

    const-string v1, "a slider to %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 55
    :goto_1
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-virtual {v1, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p2, v0, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_2

    .line 57
    :cond_b
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 58
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/ViewGroup;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_2

    .line 60
    :cond_c
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->f:Lcom/instabug/library/visualusersteps/d;

    invoke-interface {p2, v0, p1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_2
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->c:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/ViewGroup;Ljava/util/List;)V

    .line 76
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->c:Ljava/util/List;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->d:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 78
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->e:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e;->a(Ljava/util/List;Ljava/util/List;)V

    .line 80
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 217
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/settings/SettingsManager;->getPrivateViews()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 218
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method a(Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 219
    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 220
    :goto_0
    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 221
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 222
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 225
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/view/View;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method b()V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 4
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 5
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x2

    .line 7
    new-array v3, v3, [I

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 9
    aget v1, v3, v1

    const/4 v4, 0x1

    .line 10
    aget v3, v3, v4

    .line 11
    iget-object v4, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    new-instance v5, Lcom/instabug/library/visualusersteps/b;

    int-to-float v3, v3

    int-to-float v1, v1

    invoke-direct {v5, v2, v3, v1}, Lcom/instabug/library/visualusersteps/b;-><init>(Ljava/lang/String;FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_1
    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    :cond_2
    return-void
.end method
