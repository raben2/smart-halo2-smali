.class public final Lcom/google/api/ResourceDescriptor$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ResourceDescriptor.java"

# interfaces
.implements Lcom/google/api/ResourceDescriptorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ResourceDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ResourceDescriptor;",
        "Lcom/google/api/ResourceDescriptor$Builder;",
        ">;",
        "Lcom/google/api/ResourceDescriptorOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1137
    invoke-static {}, Lcom/google/api/ResourceDescriptor;->access$000()Lcom/google/api/ResourceDescriptor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ResourceDescriptor$1;)V
    .locals 0

    .line 1130
    invoke-direct {p0}, Lcom/google/api/ResourceDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPattern(Ljava/lang/Iterable;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/ResourceDescriptor$Builder;"
        }
    .end annotation

    .line 1431
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$600(Lcom/google/api/ResourceDescriptor;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPattern(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1403
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1404
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public addPatternBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1485
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1486
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$800(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearHistory()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1685
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1686
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1400(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public clearNameField()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1543
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1544
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1000(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public clearPattern()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1457
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1458
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$700(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public clearPlural()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1751
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1752
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1600(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public clearSingular()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1831
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1832
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$1900(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public clearType()Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1218
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1219
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0}, Lcom/google/api/ResourceDescriptor;->access$200(Lcom/google/api/ResourceDescriptor;)V

    return-object p0
.end method

.method public getHistory()Lcom/google/api/ResourceDescriptor$History;
    .locals 1

    .line 1636
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getHistory()Lcom/google/api/ResourceDescriptor$History;

    move-result-object v0

    return-object v0
.end method

.method public getHistoryValue()I
    .locals 1

    .line 1586
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getHistoryValue()I

    move-result v0

    return v0
.end method

.method public getNameField()Ljava/lang/String;
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameField()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameFieldBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1515
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getNameFieldBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPattern(I)Ljava/lang/String;
    .locals 1

    .line 1321
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/ResourceDescriptor;->getPattern(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPatternBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0, p1}, Lcom/google/api/ResourceDescriptor;->getPatternBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getPatternCount()I
    .locals 1

    .line 1295
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPatternCount()I

    move-result v0

    return v0
.end method

.method public getPatternList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1269
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    .line 1270
    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPatternList()Ljava/util/List;

    move-result-object v0

    .line 1269
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlural()Ljava/lang/String;
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPlural()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPluralBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getPluralBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSingular()Ljava/lang/String;
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingular()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSingularBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1801
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getSingularBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-virtual {v0}, Lcom/google/api/ResourceDescriptor;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setHistory(Lcom/google/api/ResourceDescriptor$History;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1660
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1661
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1300(Lcom/google/api/ResourceDescriptor;Lcom/google/api/ResourceDescriptor$History;)V

    return-object p0
.end method

.method public setHistoryValue(I)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1610
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1611
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1200(Lcom/google/api/ResourceDescriptor;I)V

    return-object p0
.end method

.method public setNameField(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1529
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1530
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$900(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameFieldBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1559
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1560
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1100(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPattern(ILjava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1375
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1376
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1, p2}, Lcom/google/api/ResourceDescriptor;->access$400(Lcom/google/api/ResourceDescriptor;ILjava/lang/String;)V

    return-object p0
.end method

.method public setPlural(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1735
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1736
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1500(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPluralBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1769
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1770
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1700(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSingular(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1816
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1817
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$1800(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSingularBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1848
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1849
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$2000(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1198
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$100(Lcom/google/api/ResourceDescriptor;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/ResourceDescriptor$Builder;
    .locals 1

    .line 1240
    invoke-virtual {p0}, Lcom/google/api/ResourceDescriptor$Builder;->copyOnWrite()V

    .line 1241
    iget-object v0, p0, Lcom/google/api/ResourceDescriptor$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ResourceDescriptor;

    invoke-static {v0, p1}, Lcom/google/api/ResourceDescriptor;->access$300(Lcom/google/api/ResourceDescriptor;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
