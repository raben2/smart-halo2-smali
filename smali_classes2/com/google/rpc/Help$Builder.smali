.class public final Lcom/google/rpc/Help$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Help.java"

# interfaces
.implements Lcom/google/rpc/HelpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/Help;",
        "Lcom/google/rpc/Help$Builder;",
        ">;",
        "Lcom/google/rpc/HelpOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 766
    invoke-static {}, Lcom/google/rpc/Help;->access$800()Lcom/google/rpc/Help;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/Help$1;)V
    .locals 0

    .line 759
    invoke-direct {p0}, Lcom/google/rpc/Help$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllLinks(Ljava/lang/Iterable;)Lcom/google/rpc/Help$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/Help$Link;",
            ">;)",
            "Lcom/google/rpc/Help$Builder;"
        }
    .end annotation

    .line 891
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0, p1}, Lcom/google/rpc/Help;->access$1200(Lcom/google/rpc/Help;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addLinks(ILcom/google/rpc/Help$Link$Builder;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 877
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 878
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    .line 879
    invoke-virtual {p2}, Lcom/google/rpc/Help$Link$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/Help$Link;

    .line 878
    invoke-static {v0, p1, p2}, Lcom/google/rpc/Help;->access$1100(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V

    return-object p0
.end method

.method public addLinks(ILcom/google/rpc/Help$Link;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Help;->access$1100(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V

    return-object p0
.end method

.method public addLinks(Lcom/google/rpc/Help$Link$Builder;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-virtual {p1}, Lcom/google/rpc/Help$Link$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/Help$Link;

    invoke-static {v0, p1}, Lcom/google/rpc/Help;->access$1000(Lcom/google/rpc/Help;Lcom/google/rpc/Help$Link;)V

    return-object p0
.end method

.method public addLinks(Lcom/google/rpc/Help$Link;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 839
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0, p1}, Lcom/google/rpc/Help;->access$1000(Lcom/google/rpc/Help;Lcom/google/rpc/Help$Link;)V

    return-object p0
.end method

.method public clearLinks()Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 904
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0}, Lcom/google/rpc/Help;->access$1300(Lcom/google/rpc/Help;)V

    return-object p0
.end method

.method public getLinks(I)Lcom/google/rpc/Help$Link;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-virtual {v0, p1}, Lcom/google/rpc/Help;->getLinks(I)Lcom/google/rpc/Help$Link;

    move-result-object p1

    return-object p1
.end method

.method public getLinksCount()I
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-virtual {v0}, Lcom/google/rpc/Help;->getLinksCount()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/Help$Link;",
            ">;"
        }
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    .line 780
    invoke-virtual {v0}, Lcom/google/rpc/Help;->getLinksList()Ljava/util/List;

    move-result-object v0

    .line 779
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeLinks(I)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 915
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 916
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0, p1}, Lcom/google/rpc/Help;->access$1400(Lcom/google/rpc/Help;I)V

    return-object p0
.end method

.method public setLinks(ILcom/google/rpc/Help$Link$Builder;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    .line 827
    invoke-virtual {p2}, Lcom/google/rpc/Help$Link$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/Help$Link;

    .line 826
    invoke-static {v0, p1, p2}, Lcom/google/rpc/Help;->access$900(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V

    return-object p0
.end method

.method public setLinks(ILcom/google/rpc/Help$Link;)Lcom/google/rpc/Help$Builder;
    .locals 1

    .line 812
    invoke-virtual {p0}, Lcom/google/rpc/Help$Builder;->copyOnWrite()V

    .line 813
    iget-object v0, p0, Lcom/google/rpc/Help$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/Help;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/Help;->access$900(Lcom/google/rpc/Help;ILcom/google/rpc/Help$Link;)V

    return-object p0
.end method
