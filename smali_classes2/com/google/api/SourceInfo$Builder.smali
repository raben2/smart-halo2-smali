.class public final Lcom/google/api/SourceInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceInfo.java"

# interfaces
.implements Lcom/google/api/SourceInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SourceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SourceInfo;",
        "Lcom/google/api/SourceInfo$Builder;",
        ">;",
        "Lcom/google/api/SourceInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 253
    invoke-static {}, Lcom/google/api/SourceInfo;->access$000()Lcom/google/api/SourceInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SourceInfo$1;)V
    .locals 0

    .line 246
    invoke-direct {p0}, Lcom/google/api/SourceInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSourceFiles(Ljava/lang/Iterable;)Lcom/google/api/SourceInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/api/SourceInfo$Builder;"
        }
    .end annotation

    .line 378
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 379
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$400(Lcom/google/api/SourceInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 366
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 365
    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$300(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 352
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addSourceFiles(Lcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$200(Lcom/google/api/SourceInfo;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public clearSourceFiles()Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0}, Lcom/google/api/SourceInfo;->access$500(Lcom/google/api/SourceInfo;)V

    return-object p0
.end method

.method public getSourceFiles(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0, p1}, Lcom/google/api/SourceInfo;->getSourceFiles(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1
.end method

.method public getSourceFilesCount()I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesCount()I

    move-result v0

    return v0
.end method

.method public getSourceFilesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 267
    invoke-virtual {v0}, Lcom/google/api/SourceInfo;->getSourceFilesList()Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeSourceFiles(I)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 403
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1}, Lcom/google/api/SourceInfo;->access$600(Lcom/google/api/SourceInfo;I)V

    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any$Builder;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 313
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    .line 314
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 313
    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setSourceFiles(ILcom/google/protobuf/Any;)Lcom/google/api/SourceInfo$Builder;
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcom/google/api/SourceInfo$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lcom/google/api/SourceInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SourceInfo;

    invoke-static {v0, p1, p2}, Lcom/google/api/SourceInfo;->access$100(Lcom/google/api/SourceInfo;ILcom/google/protobuf/Any;)V

    return-object p0
.end method
