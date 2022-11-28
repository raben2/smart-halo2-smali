.class Lcom/instabug/library/visualusersteps/e$b;
.super Ljava/lang/Object;
.source "TouchedViewsProcessor.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/e;->a(Lcom/google/android/material/tabs/TabLayout;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener<",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic b:Lcom/instabug/library/visualusersteps/e$e;

.field final synthetic c:Lcom/instabug/library/visualusersteps/c;

.field final synthetic d:Lcom/instabug/library/visualusersteps/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/e;Lcom/google/android/material/tabs/TabLayout;Lcom/instabug/library/visualusersteps/e$e;Lcom/instabug/library/visualusersteps/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    iput-object p2, p0, Lcom/instabug/library/visualusersteps/e$b;->a:Lcom/google/android/material/tabs/TabLayout;

    iput-object p3, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    iput-object p4, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-virtual {v0, p2}, Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    iget-object v2, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    invoke-static {v0, p1, v1, v2}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "the button \"%s\""

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object p1

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$b;->b:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->c:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$b;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    .line 20
    :goto_0
    invoke-virtual {p2, p0}, Lcom/google/android/material/tabs/TabLayout;->removeOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e$b;->a(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$b;->a:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p1, v0}, Lcom/instabug/library/visualusersteps/e$b;->a(Lcom/google/android/material/tabs/TabLayout$Tab;Lcom/google/android/material/tabs/TabLayout;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
