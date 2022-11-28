.class public final Lcom/jakewharton/rxbinding2/widget/RxToolbar;
.super Ljava/lang/Object;
.source "RxToolbar.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static itemClicks(Landroid/widget/Toolbar;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/Observable<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 28
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/ToolbarItemClickObservable;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method

.method public static navigationClicks(Landroid/widget/Toolbar;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 44
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/ToolbarNavigationClickObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/ToolbarNavigationClickObservable;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method

.method public static subtitle(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 88
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$3;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$3;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method

.method public static subtitleRes(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 104
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$4;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method

.method public static title(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 56
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$1;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method

.method public static titleRes(Landroid/widget/Toolbar;)Lio/reactivex/functions/Consumer;
    .locals 1
    .param p0    # Landroid/widget/Toolbar;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Toolbar;",
            ")",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 72
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/RxToolbar$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/widget/RxToolbar$2;-><init>(Landroid/widget/Toolbar;)V

    return-object v0
.end method
