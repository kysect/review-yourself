﻿using System;
using System.Collections.Generic;
using ReviewYourself.WebApi.DatabaseModels;

namespace ReviewYourself.WebApi.Services
{
    public interface ISolutionService
    {
        Solution Create(Solution solution, Guid executorId);
        Solution Get(Guid solutionId, Guid executorId);
        Solution GetUserSolution(Guid taskId, Guid userId, Guid executorId);
        ICollection<Solution> GetSolutionsByTask(Guid taskId, Guid executor);
        void Delete(Guid solutionId, Guid executorId);

        //void ResolveSolution(Guid solutionId, Guid executorId);
    }
}