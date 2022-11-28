.class public final Lcom/google/api/Page$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Page.java"

# interfaces
.implements Lcom/google/api/PageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Page;",
        "Lcom/google/api/Page$Builder;",
        ">;",
        "Lcom/google/api/PageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 472
    invoke-static {}, Lcom/google/api/Page;->access$000()Lcom/google/api/Page;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Page$1;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Lcom/google/api/Page$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllSubpages(Ljava/lang/Iterable;)Lcom/google/api/Page$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)",
            "Lcom/google/api/Page$Builder;"
        }
    .end annotation

    .line 815
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 816
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$1000(Lcom/google/api/Page;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addSubpages(ILcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 801
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 802
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Page;

    .line 801
    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$900(Lcom/google/api/Page;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public addSubpages(ILcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$900(Lcom/google/api/Page;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public addSubpages(Lcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 786
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 787
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {p1}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$800(Lcom/google/api/Page;Lcom/google/api/Page;)V

    return-object p0
.end method

.method public addSubpages(Lcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$800(Lcom/google/api/Page;Lcom/google/api/Page;)V

    return-object p0
.end method

.method public clearContent()Lcom/google/api/Page$Builder;
    .locals 1

    .line 663
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 664
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$500(Lcom/google/api/Page;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/Page$Builder;
    .locals 1

    .line 577
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 578
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$200(Lcom/google/api/Page;)V

    return-object p0
.end method

.method public clearSubpages()Lcom/google/api/Page$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0}, Lcom/google/api/Page;->access$1100(Lcom/google/api/Page;)V

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 621
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getContentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSubpages(I)Lcom/google/api/Page;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0, p1}, Lcom/google/api/Page;->getSubpages(I)Lcom/google/api/Page;

    move-result-object p1

    return-object p1
.end method

.method public getSubpagesCount()I
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-virtual {v0}, Lcom/google/api/Page;->getSubpagesCount()I

    move-result v0

    return v0
.end method

.method public getSubpagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 695
    invoke-virtual {v0}, Lcom/google/api/Page;->getSubpagesList()Ljava/util/List;

    move-result-object v0

    .line 694
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeSubpages(I)Lcom/google/api/Page$Builder;
    .locals 1

    .line 841
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 842
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$1200(Lcom/google/api/Page;I)V

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 649
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 650
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$400(Lcom/google/api/Page;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 679
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 680
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$600(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 551
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 552
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$100(Lcom/google/api/Page;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Page;->access$300(Lcom/google/api/Page;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSubpages(ILcom/google/api/Page$Builder;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 744
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    .line 746
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Page;

    .line 745
    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$700(Lcom/google/api/Page;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public setSubpages(ILcom/google/api/Page;)Lcom/google/api/Page$Builder;
    .locals 1

    .line 730
    invoke-virtual {p0}, Lcom/google/api/Page$Builder;->copyOnWrite()V

    .line 731
    iget-object v0, p0, Lcom/google/api/Page$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Page;

    invoke-static {v0, p1, p2}, Lcom/google/api/Page;->access$700(Lcom/google/api/Page;ILcom/google/api/Page;)V

    return-object p0
.end method
