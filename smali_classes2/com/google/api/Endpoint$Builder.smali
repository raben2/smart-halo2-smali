.class public final Lcom/google/api/Endpoint$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Endpoint.java"

# interfaces
.implements Lcom/google/api/EndpointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Endpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Endpoint;",
        "Lcom/google/api/Endpoint$Builder;",
        ">;",
        "Lcom/google/api/EndpointOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 635
    invoke-static {}, Lcom/google/api/Endpoint;->access$000()Lcom/google/api/Endpoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Endpoint$1;)V
    .locals 0

    .line 628
    invoke-direct {p0}, Lcom/google/api/Endpoint$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAliases(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 806
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 807
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$500(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAliasesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$800(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public addAllAliases(Ljava/lang/Iterable;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Endpoint$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 824
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$600(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllFeatures(Ljava/lang/Iterable;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/api/Endpoint$Builder;"
        }
    .end annotation

    .line 958
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 959
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1100(Lcom/google/api/Endpoint;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFeatures(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1000(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public addFeaturesBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 987
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public clearAliases()Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 841
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$700(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearAllowCors()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1800(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearFeatures()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 971
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 972
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1200(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearName()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 688
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 689
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$200(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public clearTarget()Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1057
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0}, Lcom/google/api/Endpoint;->access$1500(Lcom/google/api/Endpoint;)V

    return-object p0
.end method

.method public getAliases(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getAliases(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getAliasesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAliasesCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 738
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAliasesCount()I

    move-result v0

    return v0
.end method

.method public getAliasesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    .line 723
    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAliasesList()Ljava/util/List;

    move-result-object v0

    .line 722
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowCors()Z
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getAllowCors()Z

    move-result v0

    return v0
.end method

.method public getFeatures(I)Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getFeatures(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFeaturesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0, p1}, Lcom/google/api/Endpoint;->getFeaturesBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFeaturesCount()I
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getFeaturesCount()I

    move-result v0

    return v0
.end method

.method public getFeaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    .line 875
    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getFeaturesList()Ljava/util/List;

    move-result-object v0

    .line 874
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-virtual {v0}, Lcom/google/api/Endpoint;->getTargetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setAliases(ILjava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 788
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 789
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1, p2}, Lcom/google/api/Endpoint;->access$400(Lcom/google/api/Endpoint;ILjava/lang/String;)V

    return-object p0
.end method

.method public setAllowCors(Z)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1112
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1113
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1700(Lcom/google/api/Endpoint;Z)V

    return-object p0
.end method

.method public setFeatures(ILjava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1, p2}, Lcom/google/api/Endpoint;->access$900(Lcom/google/api/Endpoint;ILjava/lang/String;)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 676
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$100(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$300(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setTarget(Ljava/lang/String;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1400(Lcom/google/api/Endpoint;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Endpoint$Builder;
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/google/api/Endpoint$Builder;->copyOnWrite()V

    .line 1076
    iget-object v0, p0, Lcom/google/api/Endpoint$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Endpoint;

    invoke-static {v0, p1}, Lcom/google/api/Endpoint;->access$1600(Lcom/google/api/Endpoint;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
