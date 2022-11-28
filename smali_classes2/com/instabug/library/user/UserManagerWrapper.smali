.class public Lcom/instabug/library/user/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUUIDAsync(Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;)V
    .locals 0
    .param p0    # Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/instabug/library/user/b;->a(Lcom/instabug/library/internal/storage/cache/db/InstabugDBInsertionListener;)V

    return-void
.end method

.method public static getUserEmail()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserUUID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/library/user/b;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
