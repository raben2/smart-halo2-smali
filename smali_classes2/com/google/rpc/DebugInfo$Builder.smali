.class public final Lcom/google/rpc/DebugInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DebugInfo.java"

# interfaces
.implements Lcom/google/rpc/DebugInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/DebugInfo;",
        "Lcom/google/rpc/DebugInfo$Builder;",
        ">;",
        "Lcom/google/rpc/DebugInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 312
    invoke-static {}, Lcom/google/rpc/DebugInfo;->access$000()Lcom/google/rpc/DebugInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/DebugInfo$1;)V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/google/rpc/DebugInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllStackEntries(Ljava/lang/Iterable;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/rpc/DebugInfo$Builder;"
        }
    .end annotation

    .line 411
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 412
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/DebugInfo;->access$300(Lcom/google/rpc/DebugInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addStackEntries(Ljava/lang/String;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/DebugInfo;->access$200(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public addStackEntriesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 439
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 440
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/DebugInfo;->access$500(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearDetail()Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 493
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 494
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0}, Lcom/google/rpc/DebugInfo;->access$700(Lcom/google/rpc/DebugInfo;)V

    return-object p0
.end method

.method public clearStackEntries()Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 424
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 425
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0}, Lcom/google/rpc/DebugInfo;->access$400(Lcom/google/rpc/DebugInfo;)V

    return-object p0
.end method

.method public getDetail()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getDetail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getDetailBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStackEntries(I)Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0, p1}, Lcom/google/rpc/DebugInfo;->getStackEntries(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStackEntriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0, p1}, Lcom/google/rpc/DebugInfo;->getStackEntriesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getStackEntriesCount()I
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getStackEntriesCount()I

    move-result v0

    return v0
.end method

.method public getStackEntriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    .line 328
    invoke-virtual {v0}, Lcom/google/rpc/DebugInfo;->getStackEntriesList()Ljava/util/List;

    move-result-object v0

    .line 327
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 480
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/DebugInfo;->access$600(Lcom/google/rpc/DebugInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDetailBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1}, Lcom/google/rpc/DebugInfo;->access$800(Lcom/google/rpc/DebugInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setStackEntries(ILjava/lang/String;)Lcom/google/rpc/DebugInfo$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/rpc/DebugInfo$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/rpc/DebugInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/DebugInfo;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/DebugInfo;->access$100(Lcom/google/rpc/DebugInfo;ILjava/lang/String;)V

    return-object p0
.end method
