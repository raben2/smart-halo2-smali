.class public final Lbike/smarthalo/app/extensions/RxJavaExtensionsKt;
.super Ljava/lang/Object;
.source "RxJavaExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxJavaExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxJavaExtensions.kt\nbike/smarthalo/app/extensions/RxJavaExtensionsKt\n*L\n1#1,21:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u0004\u0018\u00010\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u0004\u0018\u00010\u0002\u00a8\u0006\u0005"
    }
    d2 = {
        "hasValue",
        "",
        "Lio/reactivex/disposables/Disposable;",
        "safeUnsubscribe",
        "",
        "app_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public static final hasValue(Lio/reactivex/disposables/Disposable;)Z
    .locals 0
    .param p0    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 17
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final safeUnsubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .param p0    # Lio/reactivex/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
