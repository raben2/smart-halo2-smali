.class public final Lcom/google/api/HttpRule$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HttpRule.java"

# interfaces
.implements Lcom/google/api/HttpRuleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/HttpRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/HttpRule;",
        "Lcom/google/api/HttpRule$Builder;",
        ">;",
        "Lcom/google/api/HttpRuleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1487
    invoke-static {}, Lcom/google/api/HttpRule;->access$000()Lcom/google/api/HttpRule;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/HttpRule$1;)V
    .locals 0

    .line 1480
    invoke-direct {p0}, Lcom/google/api/HttpRule$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAdditionalBindings(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2320
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2321
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2322
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 2321
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addAdditionalBindings(ILcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2290
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2291
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$3100(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addAdditionalBindings(Lcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2305
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2306
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {p1}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addAdditionalBindings(Lcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2275
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2276
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3000(Lcom/google/api/HttpRule;Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public addAllAdditionalBindings(Ljava/lang/Iterable;)Lcom/google/api/HttpRule$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/HttpRule;",
            ">;)",
            "Lcom/google/api/HttpRule$Builder;"
        }
    .end annotation

    .line 2336
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2337
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3200(Lcom/google/api/HttpRule;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public clearAdditionalBindings()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2350
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2351
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$3300(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearBody()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2082
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2083
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2400(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearCustom()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2012
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2013
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2200(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearDelete()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1838
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1839
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1500(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearGet()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1630
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1631
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$600(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearPatch()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1907
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1908
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1800(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearPattern()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1498
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$100(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearPost()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1769
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1770
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$1200(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearPut()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1700
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1701
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$900(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearResponseBody()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2171
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2172
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$2700(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public clearSelector()Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1556
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1557
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0}, Lcom/google/api/HttpRule;->access$300(Lcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public getAdditionalBindings(I)Lcom/google/api/HttpRule;
    .locals 1

    .line 2232
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0, p1}, Lcom/google/api/HttpRule;->getAdditionalBindings(I)Lcom/google/api/HttpRule;

    move-result-object p1

    return-object p1
.end method

.method public getAdditionalBindingsCount()I
    .locals 1

    .line 2220
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getAdditionalBindingsCount()I

    move-result v0

    return v0
.end method

.method public getAdditionalBindingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/HttpRule;",
            ">;"
        }
    .end annotation

    .line 2206
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2207
    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getAdditionalBindingsList()Ljava/util/List;

    move-result-object v0

    .line 2206
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 2031
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2048
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCustom()Lcom/google/api/CustomHttpPattern;
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getCustom()Lcom/google/api/CustomHttpPattern;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 1

    .line 1799
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getDelete()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1812
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getDeleteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGet()Ljava/lang/String;
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getGet()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getGetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatch()Ljava/lang/String;
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatch()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPatchBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1881
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatchBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPatternCase()Lcom/google/api/HttpRule$PatternCase;
    .locals 1

    .line 1493
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPatternCase()Lcom/google/api/HttpRule$PatternCase;

    move-result-object v0

    return-object v0
.end method

.method public getPost()Ljava/lang/String;
    .locals 1

    .line 1730
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPostBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPut()Ljava/lang/String;
    .locals 1

    .line 1661
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPut()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPutBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1674
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getPutBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .line 2120
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseBodyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2137
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getResponseBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSelector()Ljava/lang/String;
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelector()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1528
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->getSelectorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCustom()Z
    .locals 1

    .line 1939
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {v0}, Lcom/google/api/HttpRule;->hasCustom()Z

    move-result v0

    return v0
.end method

.method public mergeCustom(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1997
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1998
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2100(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0
.end method

.method public removeAdditionalBindings(I)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2364
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2365
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$3400(Lcom/google/api/HttpRule;I)V

    return-object p0
.end method

.method public setAdditionalBindings(ILcom/google/api/HttpRule$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2260
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2261
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    .line 2262
    invoke-virtual {p2}, Lcom/google/api/HttpRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/HttpRule;

    .line 2261
    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public setAdditionalBindings(ILcom/google/api/HttpRule;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2245
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2246
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1, p2}, Lcom/google/api/HttpRule;->access$2900(Lcom/google/api/HttpRule;ILcom/google/api/HttpRule;)V

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2066
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2300(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setBodyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2101
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2102
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2500(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCustom(Lcom/google/api/CustomHttpPattern$Builder;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1982
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1983
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-virtual {p1}, Lcom/google/api/CustomHttpPattern$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/CustomHttpPattern;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0
.end method

.method public setCustom(Lcom/google/api/CustomHttpPattern;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1966
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1967
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2000(Lcom/google/api/HttpRule;Lcom/google/api/CustomHttpPattern;)V

    return-object p0
.end method

.method public setDelete(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1826
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1400(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDeleteBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1853
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1854
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1600(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setGet(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1616
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1617
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$500(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGetBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1647
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$700(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPatch(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1894
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1895
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1700(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPatchBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1922
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1923
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1900(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPost(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1756
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1757
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1100(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPostBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1784
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1785
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1300(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPut(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1687
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1688
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$800(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPutBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1715
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1716
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$1000(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponseBody(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2154
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2155
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2600(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseBodyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 2190
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 2191
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$2800(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setSelector(Ljava/lang/String;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1543
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$200(Lcom/google/api/HttpRule;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSelectorBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/HttpRule$Builder;
    .locals 1

    .line 1572
    invoke-virtual {p0}, Lcom/google/api/HttpRule$Builder;->copyOnWrite()V

    .line 1573
    iget-object v0, p0, Lcom/google/api/HttpRule$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/HttpRule;

    invoke-static {v0, p1}, Lcom/google/api/HttpRule;->access$400(Lcom/google/api/HttpRule;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
