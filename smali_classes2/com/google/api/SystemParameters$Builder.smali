.class public final Lcom/google/api/SystemParameters$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SystemParameters.java"

# interfaces
.implements Lcom/google/api/SystemParametersOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/SystemParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/SystemParameters;",
        "Lcom/google/api/SystemParameters$Builder;",
        ">;",
        "Lcom/google/api/SystemParametersOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 492
    invoke-static {}, Lcom/google/api/SystemParameters;->access$000()Lcom/google/api/SystemParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/SystemParameters$1;)V
    .locals 0

    .line 485
    invoke-direct {p0}, Lcom/google/api/SystemParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRules(Ljava/lang/Iterable;)Lcom/google/api/SystemParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/SystemParameterRule;",
            ">;)",
            "Lcom/google/api/SystemParameters$Builder;"
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 828
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$400(Lcom/google/api/SystemParameters;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 794
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameterRule;

    .line 793
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public addRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$300(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 758
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 759
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {p1}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/SystemParameterRule;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public addRules(Lcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 690
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 691
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$200(Lcom/google/api/SystemParameters;Lcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public clearRules()Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 860
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 861
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0}, Lcom/google/api/SystemParameters;->access$500(Lcom/google/api/SystemParameters;)V

    return-object p0
.end method

.method public getRules(I)Lcom/google/api/SystemParameterRule;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0, p1}, Lcom/google/api/SystemParameters;->getRules(I)Lcom/google/api/SystemParameterRule;

    move-result-object p1

    return-object p1
.end method

.method public getRulesCount()I
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesCount()I

    move-result v0

    return v0
.end method

.method public getRulesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/SystemParameterRule;",
            ">;"
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 527
    invoke-virtual {v0}, Lcom/google/api/SystemParameters;->getRulesList()Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeRules(I)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 893
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 894
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1}, Lcom/google/api/SystemParameters;->access$600(Lcom/google/api/SystemParameters;I)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/SystemParameterRule$Builder;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 656
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 657
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    .line 658
    invoke-virtual {p2}, Lcom/google/api/SystemParameterRule$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/SystemParameterRule;

    .line 657
    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0
.end method

.method public setRules(ILcom/google/api/SystemParameterRule;)Lcom/google/api/SystemParameters$Builder;
    .locals 1

    .line 622
    invoke-virtual {p0}, Lcom/google/api/SystemParameters$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/api/SystemParameters$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/SystemParameters;

    invoke-static {v0, p1, p2}, Lcom/google/api/SystemParameters;->access$100(Lcom/google/api/SystemParameters;ILcom/google/api/SystemParameterRule;)V

    return-object p0
.end method
