.class public Lcom/instabug/library/network/Request$FileToUpload;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/network/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileToUpload"
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePartName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/library/network/Request$FileToUpload;->filePartName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/instabug/library/network/Request$FileToUpload;->fileName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/instabug/library/network/Request$FileToUpload;->filePath:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/instabug/library/network/Request$FileToUpload;->fileType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$FileToUpload;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePartName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$FileToUpload;->filePartName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$FileToUpload;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/Request$FileToUpload;->fileType:Ljava/lang/String;

    return-object v0
.end method
