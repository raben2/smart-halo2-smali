.class Lcom/instabug/library/logging/g$b;
.super Ljava/lang/Object;
.source "WriteLogDescriptorDiskOperator.java"

# interfaces
.implements Lcom/instabug/library/util/memory/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/logging/g;->a(Lcom/instabug/library/model/d;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/FileOutputStream;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instabug/library/logging/g;Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/logging/g$b;->a:Ljava/io/FileOutputStream;

    iput-object p3, p0, Lcom/instabug/library/logging/g$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAffirmed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/g$b;->a:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/instabug/library/logging/g$b;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/instabug/library/internal/storage/Encryptor;->d(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/logging/g$b;->a:Ljava/io/FileOutputStream;

    const-string v1, "\n\r"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public onDenied()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/g;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Running on low memory"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
