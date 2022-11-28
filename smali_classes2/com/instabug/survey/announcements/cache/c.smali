.class public Lcom/instabug/survey/announcements/cache/c;
.super Ljava/lang/Object;
.source "NewFeaturesAssetsHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(JLcom/instabug/survey/d/c/e;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/instabug/survey/d/c/e;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/model/AssetEntity;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/instabug/survey/announcements/cache/c$b;

    invoke-direct {v0, p2, p0, p1}, Lcom/instabug/survey/announcements/cache/c$b;-><init>(Lcom/instabug/survey/d/c/e;J)V

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/instabug/survey/d/c/c;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/survey/d/c/c;",
            ")",
            "Ljava/util/List<",
            "Lio/reactivex/Observable<",
            "Lcom/instabug/library/model/AssetEntity;",
            ">;>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/c;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instabug/survey/d/c/e;

    .line 10
    invoke-virtual {v2}, Lcom/instabug/survey/d/c/e;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/c;->d()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/instabug/survey/announcements/cache/c;->a(JLcom/instabug/survey/d/c/e;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Lcom/instabug/survey/d/c/a;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloading announcement assets for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSTABUG"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instabug/survey/d/c/c;

    invoke-static {v0}, Lcom/instabug/survey/announcements/cache/c;->a(Lcom/instabug/survey/d/c/c;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {v0}, Lio/reactivex/Observable;->merge(Ljava/lang/Iterable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/instabug/survey/announcements/cache/c$a;

    invoke-direct {v1, p0}, Lcom/instabug/survey/announcements/cache/c$a;-><init>(Lcom/instabug/survey/d/c/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
