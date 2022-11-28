.class public final Lcom/google/rpc/Status$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Status.java"

# interfaces
.implements Lcom/google/rpc/StatusOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/Status;",
        "Lcom/google/rpc/Status$Builder;",
        ">;",
        "Lcom/google/rpc/StatusOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 390
    invoke-static {}, Lcom/google/rpc/Status;->access$000()Lcom/google/rpc/Status;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/Status$1;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Lcom/google/rpc/Status$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDetails(Ljava/lang/Iterable;)Lcom/google/rpc/Status$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Any;",
            ">;)",
            "Lcom/google/rpc/Status$Builder;"
        }
    .end annotation

    .line 644
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$900(Lcom/google/rpc/Status;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addDetails(ILcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 629
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 631
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 630
    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$800(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addDetails(ILcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$800(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addDetails(Lcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 616
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {p1}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Any;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$700(Lcom/google/rpc/Status;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public addDetails(Lcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 587
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 588
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$700(Lcom/google/rpc/Status;Lcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public clearCode()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 430
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$200(Lcom/google/rpc/Status;)V

    return-object p0
.end method

.method public clearDetails()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$1000(Lcom/google/rpc/Status;)V

    return-object p0
.end method

.method public clearMessage()Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0}, Lcom/google/rpc/Status;->access$400(Lcom/google/rpc/Status;)V

    return-object p0
.end method

.method public getCode()I
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getCode()I

    move-result v0

    return v0
.end method

.method public getDetails(I)Lcom/google/protobuf/Any;
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0, p1}, Lcom/google/rpc/Status;->getDetails(I)Lcom/google/protobuf/Any;

    move-result-object p1

    return-object p1
.end method

.method public getDetailsCount()I
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getDetailsCount()I

    move-result v0

    return v0
.end method

.method public getDetailsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 524
    invoke-virtual {v0}, Lcom/google/rpc/Status;->getDetailsList()Ljava/util/List;

    move-result-object v0

    .line 523
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-virtual {v0}, Lcom/google/rpc/Status;->getMessageBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removeDetails(I)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 671
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$1100(Lcom/google/rpc/Status;I)V

    return-object p0
.end method

.method public setCode(I)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$100(Lcom/google/rpc/Status;I)V

    return-object p0
.end method

.method public setDetails(ILcom/google/protobuf/Any$Builder;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 573
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 574
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    .line 575
    invoke-virtual {p2}, Lcom/google/protobuf/Any$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Any;

    .line 574
    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$600(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setDetails(ILcom/google/protobuf/Any;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 559
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 560
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Status;->access$600(Lcom/google/rpc/Status;ILcom/google/protobuf/Any;)V

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 476
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 477
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$300(Lcom/google/rpc/Status;Ljava/lang/String;)V

    return-object p0
.end method

.method public setMessageBytes(Lcom/google/protobuf/ByteString;)Lcom/google/rpc/Status$Builder;
    .locals 1

    .line 508
    invoke-virtual {p0}, Lcom/google/rpc/Status$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/rpc/Status$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Status;

    invoke-static {v0, p1}, Lcom/google/rpc/Status;->access$500(Lcom/google/rpc/Status;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
