.class public Lcom/instabug/library/InstabugCustomTextPlaceHolder;
.super Ljava/lang/Object;
.source "InstabugCustomTextPlaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;
    }
.end annotation


# static fields
.field static final SUB_TITLE_CHAR_LIMIT:I = 0x4b

.field static final TITLE_CHAR_LIMIT:I = 0x23


# instance fields
.field private final delegate:Lcom/instabug/library/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/instabug/library/b;

    invoke-direct {v0}, Lcom/instabug/library/b;-><init>()V

    iput-object v0, p0, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->delegate:Lcom/instabug/library/b;

    return-void
.end method


# virtual methods
.method public get(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->delegate:Lcom/instabug/library/b;

    invoke-virtual {v0, p1}, Lcom/instabug/library/b;->a(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->delegate:Lcom/instabug/library/b;

    invoke-virtual {v0, p1, p2}, Lcom/instabug/library/b;->a(Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;Ljava/lang/String;)V

    return-void
.end method

.method public setPlaceHoldersMap(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/instabug/library/InstabugCustomTextPlaceHolder$Key;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/InstabugCustomTextPlaceHolder;->delegate:Lcom/instabug/library/b;

    invoke-virtual {v0, p1}, Lcom/instabug/library/b;->a(Ljava/util/Map;)V

    return-void
.end method
