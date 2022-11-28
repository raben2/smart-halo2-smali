.class public final Lcom/google/longrunning/ListOperationsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListOperationsResponse.java"

# interfaces
.implements Lcom/google/longrunning/ListOperationsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/longrunning/ListOperationsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/longrunning/ListOperationsResponse;",
        "Lcom/google/longrunning/ListOperationsResponse$Builder;",
        ">;",
        "Lcom/google/longrunning/ListOperationsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 321
    invoke-static {}, Lcom/google/longrunning/ListOperationsResponse;->access$000()Lcom/google/longrunning/ListOperationsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/longrunning/ListOperationsResponse$1;)V
    .locals 0

    .line 314
    invoke-direct {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOperations(Ljava/lang/Iterable;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/longrunning/Operation;",
            ">;)",
            "Lcom/google/longrunning/ListOperationsResponse$Builder;"
        }
    .end annotation

    .line 446
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$400(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 434
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/longrunning/Operation;

    .line 433
    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0
.end method

.method public addOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 407
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$300(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0
.end method

.method public addOperations(Lcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 419
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 420
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {p1}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/longrunning/Operation;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    return-object p0
.end method

.method public addOperations(Lcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 393
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 394
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$200(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/longrunning/Operation;)V

    return-object p0
.end method

.method public clearNextPageToken()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 524
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 525
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$800(Lcom/google/longrunning/ListOperationsResponse;)V

    return-object p0
.end method

.method public clearOperations()Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 458
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0}, Lcom/google/longrunning/ListOperationsResponse;->access$500(Lcom/google/longrunning/ListOperationsResponse;)V

    return-object p0
.end method

.method public getNextPageToken()Ljava/lang/String;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getNextPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperations(I)Lcom/google/longrunning/Operation;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->getOperations(I)Lcom/google/longrunning/Operation;

    move-result-object p1

    return-object p1
.end method

.method public getOperationsCount()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsCount()I

    move-result v0

    return v0
.end method

.method public getOperationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/longrunning/Operation;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 335
    invoke-virtual {v0}, Lcom/google/longrunning/ListOperationsResponse;->getOperationsList()Ljava/util/List;

    move-result-object v0

    .line 334
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOperations(I)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$600(Lcom/google/longrunning/ListOperationsResponse;I)V

    return-object p0
.end method

.method public setNextPageToken(Ljava/lang/String;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 511
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 512
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$700(Lcom/google/longrunning/ListOperationsResponse;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNextPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1}, Lcom/google/longrunning/ListOperationsResponse;->access$900(Lcom/google/longrunning/ListOperationsResponse;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOperations(ILcom/google/longrunning/Operation$Builder;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 380
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 381
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    .line 382
    invoke-virtual {p2}, Lcom/google/longrunning/Operation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/longrunning/Operation;

    .line 381
    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0
.end method

.method public setOperations(ILcom/google/longrunning/Operation;)Lcom/google/longrunning/ListOperationsResponse$Builder;
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/google/longrunning/ListOperationsResponse$Builder;->copyOnWrite()V

    .line 368
    iget-object v0, p0, Lcom/google/longrunning/ListOperationsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/longrunning/ListOperationsResponse;

    invoke-static {v0, p1, p2}, Lcom/google/longrunning/ListOperationsResponse;->access$100(Lcom/google/longrunning/ListOperationsResponse;ILcom/google/longrunning/Operation;)V

    return-object p0
.end method
