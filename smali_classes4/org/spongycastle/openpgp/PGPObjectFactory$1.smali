.class Lorg/spongycastle/openpgp/PGPObjectFactory$1;
.super Ljava/lang/Object;
.source "PGPObjectFactory.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/spongycastle/openpgp/PGPObjectFactory;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;


# direct methods
.method constructor <init>(Lorg/spongycastle/openpgp/PGPObjectFactory;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->getObject()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-void
.end method

.method private getObject()Ljava/lang/Object;
    .locals 4

    .line 191
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/spongycastle/openpgp/PGPObjectFactory;

    invoke-virtual {v0}, Lorg/spongycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator failed to get next object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    .line 177
    invoke-direct {p0}, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->getObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove element from factory."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
