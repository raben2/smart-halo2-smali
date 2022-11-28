.class public final Lcom/google/api/Documentation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Documentation.java"

# interfaces
.implements Lcom/google/api/DocumentationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/Documentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/Documentation;",
        "Lcom/google/api/Documentation$Builder;",
        ">;",
        "Lcom/google/api/DocumentationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 769
    invoke-static {}, Lcom/google/api/Documentation;->access$000()Lcom/google/api/Documentation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/Documentation$1;)V
    .locals 0

    .line 762
    invoke-direct {p0}, Lcom/google/api/Documentation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPages(Ljava/lang/Iterable;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Page;",
            ">;)",
            "Lcom/google/api/Documentation$Builder;"
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$700(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/Documentation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/DocumentationRule;",
            ">;)",
            "Lcom/google/api/Documentation$Builder;"
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1300(Lcom/google/api/Documentation;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPages(ILcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 955
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 956
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Page;

    .line 955
    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public addPages(ILcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$600(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public addPages(Lcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 941
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 942
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {p1}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Page;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;Lcom/google/api/Page;)V

    return-object p0
.end method

.method public addPages(Lcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 915
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 916
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$500(Lcom/google/api/Documentation;Lcom/google/api/Page;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1113
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1114
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1115
    invoke-virtual {p2}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/DocumentationRule;

    .line 1114
    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1200(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1200(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {p1}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/DocumentationRule;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1100(Lcom/google/api/Documentation;Lcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1071
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1072
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1100(Lcom/google/api/Documentation;Lcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public clearDocumentationRootUrl()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1208
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1209
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$1700(Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public clearOverview()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1326
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$2000(Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public clearPages()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 980
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 981
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$800(Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1141
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1142
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$1400(Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public clearSummary()Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 826
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0}, Lcom/google/api/Documentation;->access$200(Lcom/google/api/Documentation;)V

    return-object p0
.end method

.method public getDocumentationRootUrl()Ljava/lang/String;
    .locals 1

    .line 1169
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getDocumentationRootUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1182
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getDocumentationRootUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOverview()Ljava/lang/String;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getOverview()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverviewBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1275
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getOverviewBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPages(I)Lcom/google/api/Page;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation;->getPages(I)Lcom/google/api/Page;

    move-result-object p1

    return-object p1
.end method

.method public getPagesCount()I
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getPagesCount()I

    move-result v0

    return v0
.end method

.method public getPagesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Page;",
            ">;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 857
    invoke-virtual {v0}, Lcom/google/api/Documentation;->getPagesList()Ljava/util/List;

    move-result-object v0

    .line 856
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRules(I)Lcom/google/api/DocumentationRule;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0, p1}, Lcom/google/api/Documentation;->getRules(I)Lcom/google/api/DocumentationRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 1020
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/DocumentationRule;",
            ">;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1008
    invoke-virtual {v0}, Lcom/google/api/Documentation;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 1007
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-virtual {v0}, Lcom/google/api/Documentation;->getSummaryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public removePages(I)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 992
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 993
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$900(Lcom/google/api/Documentation;I)V

    return-object p0
.end method

.method public removeRules(I)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1155
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1500(Lcom/google/api/Documentation;I)V

    return-object p0
.end method

.method public setDocumentationRootUrl(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1195
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1196
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1600(Lcom/google/api/Documentation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setDocumentationRootUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1223
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1224
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1800(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setOverview(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1300
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1301
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$1900(Lcom/google/api/Documentation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setOverviewBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1352
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1353
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$2100(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPages(ILcom/google/api/Page$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 902
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 903
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 904
    invoke-virtual {p2}, Lcom/google/api/Page$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Page;

    .line 903
    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$400(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public setPages(ILcom/google/api/Page;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 889
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 890
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$400(Lcom/google/api/Documentation;ILcom/google/api/Page;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/DocumentationRule$Builder;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1057
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1058
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    .line 1059
    invoke-virtual {p2}, Lcom/google/api/DocumentationRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/DocumentationRule;

    .line 1058
    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1000(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/DocumentationRule;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 1043
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 1044
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1, p2}, Lcom/google/api/Documentation;->access$1000(Lcom/google/api/Documentation;ILcom/google/api/DocumentationRule;)V

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$100(Lcom/google/api/Documentation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSummaryBytes(Lcom/google/protobuf/ByteString;)Lcom/google/api/Documentation$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/api/Documentation$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/api/Documentation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/Documentation;

    invoke-static {v0, p1}, Lcom/google/api/Documentation;->access$300(Lcom/google/api/Documentation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
